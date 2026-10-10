package ps.reso.instaeclipse.mods.ghost;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import ps.reso.instaeclipse.utils.feature.FeatureFlags;
import ps.reso.instaeclipse.utils.feature.FeatureStatusTracker;
import ps.reso.instaeclipse.utils.log.ModuleLog;

/** Exact contracts inspected in Instagram 450.0.0.50.77, invoked only for is450. */
public final class DirectCompatibility450 {
 private static WeakReference<Object> active=new WeakReference<>(null);
 private DirectCompatibility450(){}
 public static void installThreadTracker(ClassLoader loader){
  XC_MethodHook.Unhook first=null;
  try{
   Class<?> fragment=loader.loadClass("X.01Sn"),controller=loader.loadClass("X.01TB");
   Class<?> key=loader.loadClass("com.instagram.model.direct.DirectThreadKey");
   final Field field=fragment.getDeclaredField("A02"),id=key.getDeclaredField("A00");
   final Method getter=controller.getDeclaredMethod("A0E");
   if(field.getType()!=controller||getter.getReturnType()!=key||id.getType()!=String.class)throw new IllegalStateException("thread contracts");
   field.setAccessible(true);id.setAccessible(true);getter.setAccessible(true);
   final Method remember=KeepUnsentMessagesHook.class.getDeclaredMethod("rememberThreadName",String.class);remember.setAccessible(true);
   first=XposedBridge.hookMethod(fragment.getDeclaredMethod("onResume"),new XC_MethodHook(){
    protected void afterHookedMethod(MethodHookParam p){
     if(p.hasThrowable())return;
     try{
      Object c=field.get(p.thisObject),k=c==null?null:getter.invoke(c);
      String value=k==null?null:(String)id.get(k);
      active=new WeakReference<>(p.thisObject);
      KeepUnsentMessagesHook.currentThreadId=value;
      if(value!=null&&!value.isEmpty())remember.invoke(null,value);
     }catch(Throwable e){active.clear();KeepUnsentMessagesHook.currentThreadId=null;ModuleLog.line("(IE|Direct450) thread tracking failed: "+e.getClass().getSimpleName());}
    }
   });
   XposedBridge.hookMethod(fragment.getDeclaredMethod("onPause"),new XC_MethodHook(){
    protected void afterHookedMethod(MethodHookParam p){
     if(active.get()==p.thisObject){active.clear();KeepUnsentMessagesHook.currentThreadId=null;}
    }
   });
   ModuleLog.line("(IE|Direct450) foreground thread lifecycle installed");
  }catch(Throwable e){if(first!=null)first.unhook();ModuleLog.line("(IE|Direct450) tracker install failed: "+e);}
 }
 public static void installEphemeralGuard(ClassLoader loader){
  try{
   Method remove=loader.loadClass("X.04k3").getDeclaredMethod("A0Z",boolean.class);
   if(remove.getReturnType()!=boolean.class)throw new IllegalStateException("ephemeral contract");
   remove.setAccessible(true);
   XposedBridge.hookMethod(remove,new XC_MethodHook(){
    protected void beforeHookedMethod(MethodHookParam p){
     // false = timed expiry; true = forced removal. Preserve explicit removal.
     if(FeatureFlags.keepEphemeralMessages&&Boolean.FALSE.equals(p.args[0]))p.setResult(Boolean.FALSE);
    }
   });
   FeatureStatusTracker.setHooked("KeepEphemeralMessages");
   ModuleLog.line("(IE|Direct450) timed ephemeral deletion guard installed");
  }catch(Throwable e){ModuleLog.line("(IE|Direct450) ephemeral install failed: "+e);}
 }
}
