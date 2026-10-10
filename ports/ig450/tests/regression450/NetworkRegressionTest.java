import java.lang.reflect.*;
import java.net.URI;
import java.util.*;
import de.robv.android.xposed.XC_MethodHook.MethodHookParam;
public class NetworkRegressionTest {
 public static class Request {public URI uri;Request(String s)throws Exception{uri=new URI(s);}}
 static Class<?> flags;static Method call;static Object cb;static int n,fail;
 static void check(boolean b,String s){n++;if(!b)fail++;System.out.println((b?"PASS ":"FAIL ")+s);}
 static boolean blocked(String path,String... enabled)throws Exception{
  for(Field f:flags.getFields())if(f.getType()==boolean.class&&Modifier.isStatic(f.getModifiers()))f.setBoolean(null,false);
  for(String f:enabled)flags.getField(f).setBoolean(null,true);
  Request r=new Request("https://i.instagram.com"+path);MethodHookParam p=new MethodHookParam();p.args=new Object[]{r,new Object(),new Object()};call.invoke(cb,p);return "127.0.0.1".equals(r.uri.getHost());
 }
 public static void main(String[] args)throws Exception{
  flags=Class.forName("ps.reso.instaeclipse.utils.feature.FeatureFlags");
  Class<?> c=Class.forName("ps.reso.instaeclipse.mods.network.IGNetworkInterceptor$1");Constructor<?> k=c.getDeclaredConstructors()[0];k.setAccessible(true);
  cb=k.newInstance(null,Collections.singletonList(Request.class.getField("uri")));call=c.getDeclaredMethod("beforeHookedMethod",MethodHookParam.class);call.setAccessible(true);
  String seen="/api/v1/direct_v2/threads/1/items/2/item_seen/";
  check(blocked(seen,"isGhostViewOnce"),"view-once receipt blocked on its own");
  check(blocked(seen,"isGhostViewOnce","disableReelsExceptDM"),"DM reels exception preserves view-once privacy");
  check(blocked("/api/v1/direct_v2/threads/1/screenshot/","isGhostScreenshot","disableReelsExceptDM"),"DM reels exception preserves screenshot privacy");
  check(blocked("/api/v1/direct_v2/threads/1/opened","isGhostSeen","disableReelsExceptDM"),"DM reels exception preserves opened privacy");
  check(blocked("/api/v1/direct_v2/mark_ephemeral_item_ranges_viewed","keepEphemeralMessages","disableReelsExceptDM"),"DM reels exception preserves ephemeral filter");
  check(!blocked("/api/v1/direct_v2/threads/1/items/2/","disableReelsExceptDM"),"normal DM requests remain allowed");
  check(!blocked("/api/v1/direct_v2/threads/1/items/2/","disableReels","disableReelsExceptDM"),"DM requests allowed with both reel switches");
  check(blocked("/api/v1/clips/discover/","disableReelsExceptDM"),"reel discovery remains blocked");
  check(blocked("/api/v1/clips/feed/?max_id=2","disableReelsExceptDM"),"reel pagination remains blocked");
  check(!blocked(seen),"all flags off leaves receipt untouched");
  check(blocked("/api/v1/direct_v2/pending_inbox/?visual_message=true","disableStories"),"stories filter recognizes visual_message query");
  check(blocked("/api/v1/direct_v2/pending_inbox/?cursor=2&visual_message=true","disableStories"),"visual_message key works in any query position");
  check(!blocked("/api/v1/direct_v2/pending_inbox/?cursor=2","disableStories"),"normal pending inbox is not blocked");
  check(!blocked("/api/v1/direct_v2/pending_inbox/?xvisual_message=true","disableStories"),"query key boundary is respected");
  check(blocked("/api/v1/media/seen/","isGhostStory"),"story receipt filter remains active");
  check(blocked("/api/v1/live/1/heartbeat_and_get_viewer_count/","isGhostLive"),"live heartbeat filter remains active");
  check(blocked("/api/v1/feed/timeline/","disableFeed"),"feed filter remains active");
  check(blocked("/api/v1/feed/reels_tray/","disableStories"),"stories tray filter remains active");
  check(blocked("/api/v1/media/1/comments/","disableComments"),"comments filter remains active");
  check(blocked("/api/v1/ads/graphql/","isAdBlockEnabled"),"ads endpoint remains blocked");
  check(blocked("/api/v1/presence/state/","spoofLastSeen"),"presence filter remains active");
  check(blocked("/api/v1/discover/ayml/","disableDiscoverPeople"),"people suggestions filter remains active");
  System.out.println("NETWORK_ASSERTIONS="+n+" FAILED="+fail+" ANDROID_RUNTIME_TESTS=0");if(fail>0)throw new AssertionError(fail+" failures");
 }
}
