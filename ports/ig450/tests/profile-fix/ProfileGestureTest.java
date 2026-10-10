import java.lang.reflect.*;
import android.view.*;
import android.app.*;
import android.os.Handler;
import de.robv.android.xposed.XC_MethodHook.MethodHookParam;
public class ProfileGestureTest {
 static int count;
 static Class<?> hook;
 static Object resume,dispatch,pause;
 static void check(boolean b,String message){if(!b)throw new AssertionError(message);count++;System.out.println("PASS "+message);}
 public static class Profile {
  public com.instagram.profile.fragment.UserDetailViewModel model=new com.instagram.profile.fragment.UserDetailViewModel();
  View view;Profile(View v){view=v;}public View getView(){return view;}
  public com.instagram.user.model.User A0r(){return model.A01;}
 }
 static Object callback(String n)throws Exception{Constructor<?> c=Class.forName(hook.getName()+"$"+n).getDeclaredConstructor();c.setAccessible(true);return c.newInstance();}
 static void invoke(Object callback,String method,Object receiver,Object...args)throws Exception{Method m=callback.getClass().getDeclaredMethod(method,MethodHookParam.class);m.setAccessible(true);MethodHookParam p=new MethodHookParam();p.thisObject=receiver;p.args=args;m.invoke(callback,p);}
 static void touch(Activity a,int action,float x,float y)throws Exception{invoke(dispatch,"beforeHookedMethod",a,MotionEvent.obtain(1000,1000,action,x,y,0));}
 static Object get(String n)throws Exception{Field f=hook.getDeclaredField(n);f.setAccessible(true);return f.get(null);}
 public static void main(String[] args)throws Exception{
  hook=Class.forName("ps.reso.instaeclipse.mods.media.ProfilePicturePreviewHook");resume=callback("1");pause=callback("2");dispatch=callback("3");
  ViewGroup decor=new ViewGroup(-1),profileView=new ViewGroup(300),content=new ViewGroup(999);View avatar=new View(10);
  decor.addView(content);content.addView(profileView);profileView.addView(avatar);
  Activity activity=new Activity();activity.window=new Window(decor);Profile profile=new Profile(profileView);
  invoke(resume,"afterHookedMethod",profile);
  touch(activity,0,120,120);check(get("pendingRoot")==decor,"activity dispatch arms press without android.R.id.content");
  touch(activity,1,120,120);check(Handler.queue.isEmpty(),"short tap cancels timer");
  touch(activity,0,120,120);touch(activity,2,180,120);check(Handler.queue.isEmpty(),"scroll cancels long press");
  touch(activity,0,120,120);touch(activity,3,120,120);check(Handler.queue.isEmpty(),"cancel event clears pending press");
  touch(activity,0,120,120);touch(activity,5,120,120);check(Handler.queue.isEmpty(),"second finger cancels pending press");
  touch(activity,0,600,600);check(Handler.queue.isEmpty(),"outside-avatar touch is ignored");
  touch(activity,0,120,120);Handler.fire();check(AlertDialog.count==1,"long press opens menu");
  check(java.util.Arrays.equals(AlertDialog.items,new String[]{"Storie / anteprima Instagram","Foto profilo (schermo intero)","Scarica foto"}),"all three requested menu actions present");
  check(decor.dispatched.size()==1&&decor.dispatched.get(0).action==3,"native gesture cancelled before menu");
  check(get("pendingPress")==null,"completed press cannot open duplicate menu");
  AlertDialog.click.onClick(new AlertDialog(),0);Handler.fire();
  check(decor.dispatched.size()==3&&decor.dispatched.get(1).action==0&&decor.dispatched.get(2).action==1,"stories choice replays native tap");
  check(decor.dispatched.get(1).x==20&&decor.dispatched.get(1).y==20,"native replay converts screen to root coordinates");
  profile.model.A01.hd=false;touch(activity,0,120,120);Handler.fire();
  check(profile.model.A01.fallbackCalls==1&&AlertDialog.count==2,"Instagram 450 multi-photo getter fallback works");
  touch(activity,0,120,120);invoke(pause,"afterHookedMethod",profile);check(Handler.queue.isEmpty(),"profile pause cancels gesture");
  touch(activity,0,120,120);check(get("pendingPress")==null,"paused profile cannot arm new gesture");
  invoke(resume,"afterHookedMethod",profile);profileView.children.clear();View alt=new View(11);profileView.addView(alt);android.content.res.Resources.failFirst=true;
  touch(activity,0,120,120);check(get("pendingAvatar")==alt,"failed resource lookup does not skip remaining avatar IDs");
  invoke(pause,"afterHookedMethod",profile);
  ViewGroup other=new ViewGroup(555);activity.window=new Window(other);invoke(resume,"afterHookedMethod",profile);touch(activity,0,120,120);
  check(Handler.queue.isEmpty(),"different window cannot act on stale profile");
  System.out.println("PROFILE_JVM_ASSERTIONS="+count+"; ANDROID_RUNTIME_TESTS=0");
 }
}
