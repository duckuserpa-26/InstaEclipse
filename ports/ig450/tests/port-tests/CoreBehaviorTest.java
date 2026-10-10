package ps.reso.instaeclipse.mods.media;
import java.util.*;
import ps.reso.instaeclipse.mods.relations.*;

/** Runs real candidate DEX code translated to JVM; excludes Android/Vector. */
public final class CoreBehaviorTest {
 static int count;
 static void ok(String name,boolean b){if(!b)throw new AssertionError(name);count++;System.out.println("PASS "+name);}
 static long point(float x,float y){return ((long)Float.floatToIntBits(x)<<32)|(Float.floatToIntBits(y)&0xffffffffL);}
 static long size(int x,int y){return ((long)x<<32)|(y&0xffffffffL);}
 static RelationData.Page page(String kind,String cursor,String next,String... ids){
  RelationData.Page p=new RelationData.Page();p.account="123";p.kind=kind;p.cursor=cursor;p.nextCursor=next;p.complete=next.isEmpty();p.requestAt=200;p.observedAt=201;
  for(String id:ids)p.users.add(new RelationData.Person(id,"user"+id));return p;
 }
 public static class Image {public String getUrl(){return "https://test.cdninstagram.com/photo.jpg";}public int getWidth(){return 1080;}public int getHeight(){return 1080;}}
 public static class ImageInfo {public List<Image> Be2(){return Arrays.asList(new Image());}}
 public static class Video {public String getUrl(){return "https://test.fbcdn.net/m86/video.mp4";}public Integer Dxb(){return 1920;}public Integer CLN(){return 1080;}}
 public static class Media450 {
  public ImageInfo A3G(){return new ImageInfo();} public List<Video> AAk(){return Arrays.asList(new Video());}
  public String A8S(){return null;} public Boolean A3s(){return Boolean.TRUE;}
  public Object A3F(){throw new AssertionError("old thumbnail getter used");}
  public Object AAh(){throw new AssertionError("old unrelated topics getter used");}
 }
 public static void main(String[] args){
  ok("left edge",InstantEdgeNavigation.edge(point(15,50),size(100,100),100)==-1);
  ok("right edge",InstantEdgeNavigation.edge(point(85,50),size(100,100),100)==1);
  ok("center uses native gesture",InstantEdgeNavigation.edge(point(50,50),size(100,100),100)==0);
  ok("top and bottom excluded",InstantEdgeNavigation.edge(point(5,5),size(100,100),100)==0&&InstantEdgeNavigation.edge(point(95,95),size(100,100),100)==0);
  ok("centered card coordinates",InstantEdgeNavigation.edge(point(115,250),size(300,500),100)==-1);
  ok("nonfinite offset rejected",InstantEdgeNavigation.edge(point(Float.NaN,50),size(100,100),100)==0);
  ok("invalid bounds rejected",InstantEdgeNavigation.edge(point(5,50),size(100,100),101)==0);
  List<String> ids=Arrays.asList("a","b","c");
  ok("previous and next",InstantEdgeNavigation.adjacent(ids,"b",-1).equals("a")&&InstantEdgeNavigation.adjacent(ids,"b",1).equals("c"));
  ok("no wrapping",InstantEdgeNavigation.adjacent(ids,"a",-1)==null&&InstantEdgeNavigation.adjacent(ids,"c",1)==null);
  ok("stable unique order",InstantEdgeNavigation.unique(Arrays.asList("a",null,"b","a","")).equals(Arrays.asList("a","b")));
  Set<String> seen=new LinkedHashSet<>(ids);Set<?> rewound=InstantEdgeNavigation.rewind(seen,"b");
  ok("rewind preserves original set",seen.size()==3&&rewound.size()==2&&!rewound.contains("b"));
  InstantEdgeNavigation.Gate gate=new InstantEdgeNavigation.Gate();gate.started("a",100);
  ok("duplicate gesture blocked",!gate.ready("a",1099));ok("gesture expires",gate.ready("a",1100));
  ok("new media unblocks",gate.ready("b",101));gate.failed();ok("failed navigation unblocks",gate.ready("a",101));
  String cdn="https://test.cdninstagram.com/";
  ok("URL validation",InstantMediaQuality.validUrl(cdn+"a.mp4")&&!InstantMediaQuality.validUrl("https://test.cdninstagram.com.evil.test/a.mp4")&&!InstantMediaQuality.validUrl("https://user@test.cdninstagram.com/a.mp4")&&!InstantMediaQuality.validUrl("http://test.cdninstagram.com/a.mp4"));
  InstantMediaQuality.Result photo=InstantMediaQuality.read450(new Media450(),false);
  ok("450 image getter and dimensions",photo.best()!=null&&photo.best().width==1080&&photo.best().height==1080);
  InstantMediaQuality.Result vid=InstantMediaQuality.read450(new Media450(),true);
  ok("450 video getter and dimensions",vid.best()!=null&&vid.best().width==1920&&vid.best().height==1080&&vid.best().hasMuxedAudio());
  ok("450 has_audio getter",Boolean.TRUE.equals(InstantMediaQuality.declaredHasAudio(new Media450())));
  List<InstantMediaQuality.Variant> variants=Arrays.asList(new InstantMediaQuality.Variant(cdn+"small.mp4",null,640,480,500,"test"),new InstantMediaQuality.Variant(cdn+"big.mp4",null,1920,1080,100,"test"));
  ok("quality ranks pixel count",InstantMediaQuality.ranked(variants).get(0).width==1920);
  String mpd="<MPD><Period><AdaptationSet mimeType='video/mp4'><Representation width='1920' height='1080' bandwidth='4000000'><BaseURL>"+cdn+"video.mp4</BaseURL></Representation></AdaptationSet><AdaptationSet mimeType='audio/mp4' codecs='mp4a.40.2'><Representation bandwidth='128000'><BaseURL>"+cdn+"audio.mp4</BaseURL></Representation></AdaptationSet></Period></MPD>";
  InstantMediaQuality.Result dash=InstantMediaQuality.fromDash(mpd);
  ok("DASH keeps video and separate audio",dash.best()!=null&&dash.best().audioUrl.equals(cdn+"audio.mp4"));
  ok("segmented DASH rejected",InstantMediaQuality.fromDash(mpd.replace("<Period>","<Period><SegmentTemplate/>" )).best()==null);
  ok("DTD rejected",InstantMediaQuality.fromDash("<!DOCTYPE MPD SYSTEM 'file:///does-not-exist'><MPD/>").best()==null);
  ok("oversized DASH rejected",InstantMediaQuality.fromDash("x".repeat(2000001)).best()==null);
  RelationSyncRun run=new RelationSyncRun("123","token",100);
  ok("followers pagination",run.accept(page("followers","","next","1","2"))==RelationSyncRun.Step.MORE);
  ok("pagination duplicates counted once",run.accept(page("followers","next","","2","3"))==RelationSyncRun.Step.FOLLOWING&&run.followers==3);
  ok("following completes",run.accept(page("following","","","4"))==RelationSyncRun.Step.COMPLETE&&run.following==1&&run.pages==3);
  ok("completed run rejects late page",run.accept(page("following","","","4"))==RelationSyncRun.Step.INVALID);
  run=new RelationSyncRun("123","token",100);RelationData.Page wrong=page("followers","","","1");wrong.account="999";
  ok("other account rejected",run.accept(wrong)==RelationSyncRun.Step.INVALID&&run.pages==0);
  wrong=page("followers","","","1");wrong.requestAt=99;
  ok("stale response rejected",run.accept(wrong)==RelationSyncRun.Step.INVALID);
  run.accept(page("followers","","next","1"));
  ok("cursor cycle rejected",run.accept(page("followers","next","next","2"))==RelationSyncRun.Step.INVALID);
  ok("invalid user ID rejected",new RelationSyncRun("123","token",100).accept(page("followers","","","0"))==RelationSyncRun.Step.INVALID);
  ok("rate limit backoff",RelationSyncRun.failure(429).equals("rate_limit")&&RelationSyncRun.retryDelay("rate_limit")==1800000);
  ok("disabled sync never due",!RelationSyncRun.due(false,1000000,0,0,0,0));
  ok("force sync throttled",!RelationSyncRun.due(true,100000,0,0,90000,90001));
  System.out.println("RESULT core_behavior="+count+" android_runtime=0");
 }
}
