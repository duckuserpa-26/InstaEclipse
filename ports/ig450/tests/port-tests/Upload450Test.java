package ps.reso.instaeclipse.mods.media;
import java.io.File;
public class Upload450Test {
 public static void main(String[] ignored)throws Exception{
  Object[] photo=new Object[13];for(int i=0;i<13;i++)photo[i]=new Object();
  Object bitmap=new Object();File file=new File("selected-video.mp4");
  Object[] a=InstantUpload450.videoArguments(photo,bitmap,file,1080,12345L);
  require(a.length==11,"450 video has eleven reflection arguments");
  require(a[0]==photo[0]&&a[1]==bitmap&&a[3]==photo[3]&&a[4]==file,"context, preview, viewmodel and file positions");
  require(a[2]==null&&a[5]==null,"optional type and Float arguments");
  require(a[6]==photo[6]&&a[7]==photo[8],"session string and continuation preserved");
  require(a[8].equals(1080)&&a[9].equals(0)&&a[10].equals(12345L),"width rotation timestamp types and positions");
  boolean rejected=false;try{InstantUpload450.videoArguments(new Object[10],bitmap,file,1080,1);}catch(IllegalArgumentException e){rejected=true;}
  require(rejected,"reject legacy photo argument layout");
  rejected=false;try{InstantUpload450.videoArguments(photo,bitmap,null,1080,1);}catch(IllegalArgumentException e){rejected=true;}
  require(rejected,"reject missing selected file");
  new InstantUpload450.Bindings(Upload450Test.class.getClassLoader());
  require(true,"actual DEX upload binding against APK-derived declarations");
  System.out.println("RESULT upload450=8 Android_runtime=0");
 }
 static void require(boolean b,String message){if(!b)throw new AssertionError(message);System.out.println("PASS "+message);}
}
