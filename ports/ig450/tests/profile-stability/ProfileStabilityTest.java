import java.lang.reflect.*;
import android.app.*;
import android.content.*;
import android.os.Handler;
import android.view.*;
import android.widget.Toast;
import de.robv.android.xposed.XC_MethodHook.MethodHookParam;

public class ProfileStabilityTest {
    static int passed, failed;
    static Class<?> hook;
    static View avatar;
    static ViewGroup root, profileView;
    static Activity activity;
    static class ThrowRoot extends ViewGroup {
        MotionEvent last;
        @Override public boolean dispatchTouchEvent(MotionEvent event) {
            last=event;throw new IllegalStateException("fixture dispatch failure");
        }
    }
    interface Test {void run() throws Exception;}
    static void test(String name, Test test) {
        try {test.run();passed++;System.out.println("PASS "+name);}
        catch(Throwable t){failed++;System.out.println("FAIL "+name+": "+t);}
        finally {Toast.fail=false;AlertDialog.fail=false;android.webkit.WebView.failDestroy=false;Handler.queue.clear();}
    }
    static void check(boolean b){if(!b)throw new AssertionError();}
    static Method method(String name) {
        for(Method m:hook.getDeclaredMethods())if(m.getName().equals(name)){m.setAccessible(true);return m;}
        throw new AssertionError(name);
    }
    static Object call(String name,Object... args) throws Exception{return method(name).invoke(null,args);}
    static void set(String name,Object value) throws Exception {Field f=hook.getDeclaredField(name);f.setAccessible(true);f.set(null,value);}
    static void callback(String n,String name,Object receiver,Object... args)throws Exception{
        Constructor<?> c=Class.forName(hook.getName()+"$"+n).getDeclaredConstructor();c.setAccessible(true);
        Object instance=c.newInstance();Method m=instance.getClass().getDeclaredMethod(name,MethodHookParam.class);m.setAccessible(true);
        MethodHookParam p=new MethodHookParam();p.thisObject=receiver;p.args=args;m.invoke(instance,p);
    }
    static void setup()throws Exception{
        root=new ViewGroup();profileView=new ViewGroup();avatar=new View(10);root.addView(profileView);profileView.addView(avatar);
        activity=new Activity();activity.window=new Window(root);
        callback("1","afterHookedMethod",new ProfileGestureTest.Profile(profileView));
        callback("3","beforeHookedMethod",activity,MotionEvent.obtain(100,100,0,120,120,0));
        Handler.queue.clear();
    }
    public static void main(String[] args)throws Exception {
        hook=Class.forName("ps.reso.instaeclipse.mods.media.ProfilePicturePreviewHook");
        test("menu uses owning Activity even with application View context",()->{
            setup();int old=AlertDialog.count;call("showForAvatar",avatar,root);
            check(AlertDialog.count==old+1 && AlertDialog.context==activity);
        });
        test("menu uses explicit Android dialog theme",()->{setup();call("showForAvatar",avatar,root);check(AlertDialog.theme==4);});
        test("native CANCEL exception does not escape Handler",()->{
            setup();ThrowRoot throwing=new ThrowRoot();set("pendingRoot",throwing);set("pendingAvatar",avatar);
            call("lambda$observeTouch$0",throwing,avatar);check(throwing.last.recycled);
        });
        test("native story replay exception is contained and event recycled",()->{
            setup();ThrowRoot throwing=new ThrowRoot();call("replayNativeTap",throwing);check(throwing.last.recycled);
        });
        test("menu failure with broken Toast cannot crash",()->{
            setup();AlertDialog.fail=true;Toast.fail=true;call("showForAvatar",avatar,root);
        });
        test("download setup failure cannot escape click callback",()->{
            setup();call("downloadPhoto",avatar,"https://scontent.cdninstagram.com/a.jpg",null,new android.widget.Button());
        });
        test("download completion UI failure is contained",()->{
            setup();call("lambda$downloadPhoto$6",new android.widget.Button(),false,avatar);
        });
        test("WebView cleanup exception cannot escape dismiss callback",()->{
            setup();android.webkit.WebView.failDestroy=true;call("lambda$showPreview$5",new android.webkit.WebView(),new Dialog());
        });
        test("fullscreen Dialog and WebView use live Activity and receive image URL",()->{
            setup();int old=Dialog.previewCount;String url="https://scontent.cdninstagram.com/a.jpg";
            call("lambda$showForAvatar$1",url,avatar,null);
            check(Dialog.previewCount==old+1&&Dialog.previewContext==activity&&android.webkit.WebView.usedContext==activity&&url.equals(android.webkit.WebView.loadedUrl));
        });
        if(args.length==0 || !args[0].equals("before")) {
            Class<?> helper=Class.forName("ps.reso.instaeclipse.mods.media.ProfileUi450");
            Method context=helper.getMethod("context",View.class),report=helper.getMethod("report",View.class,String.class,Throwable.class);
            test("ContextWrapper resolves to owning Activity",()->{
                setup();avatar.context=new ContextWrapper(new ContextWrapper(activity));check(context.invoke(null,avatar)==activity);
            });
            test("detached View cannot open a window",()->{setup();avatar.attached=false;reject(context);});
            test("null window token cannot open a window",()->{setup();avatar.token=null;reject(context);});
            test("finishing Activity cannot open a window",()->{setup();activity.finishing=true;reject(context);});
            test("destroyed Activity cannot open a window",()->{setup();activity.destroyed=true;reject(context);});
            test("another Activity cannot own an old profile View",()->{setup();activity.window=new Window(new ViewGroup());reject(context);});
            test("error report identifies stage and nested exception stack",()->{
                setup();ps.reso.instaeclipse.utils.log.ModuleLog.lines.clear();
                report.invoke(null,avatar,"menu",new RuntimeException(new IllegalArgumentException("private data omitted")));
                String text=ps.reso.instaeclipse.utils.log.ModuleLog.lines.toString();
                check(text.contains("menu failed")&&text.contains("cause=java.lang.IllegalArgumentException")&&text.contains(" at ")&&!text.contains("private data omitted"));
                check(Toast.last.contains("menu / RuntimeException"));
            });
            test("diagnostics survives unavailable logging and Toast",()->{
                setup();ps.reso.instaeclipse.utils.log.ModuleLog.fail=true;Toast.fail=true;
                try {report.invoke(null,avatar,"menu",new IllegalStateException());}
                finally {ps.reso.instaeclipse.utils.log.ModuleLog.fail=false;}
            });
        }
        System.out.println("STABILITY_JVM_PASSED="+passed+" FAILED="+failed+" ANDROID_RUNTIME_TESTS=0");
        if(failed>0)System.exit(1);
    }
    static void reject(Method context)throws Exception {
        try {context.invoke(null,avatar);throw new AssertionError("invalid window accepted");}
        catch(InvocationTargetException e){check(e.getCause() instanceof IllegalStateException);}
    }
}
