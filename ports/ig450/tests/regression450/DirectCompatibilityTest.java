import java.lang.reflect.*;
import de.robv.android.xposed.*;
public class DirectCompatibilityTest {
 static int n;static Class<?> keep;
 public static class Param extends XC_MethodHook.MethodHookParam {boolean replaced;Object result;public void setResult(Object v){replaced=true;result=v;}}
 static void check(boolean b,String s){if(!b)throw new AssertionError(s);n++;System.out.println("PASS "+s);}
 static Param fire(String owner,String name,String when,Object receiver,Object...args)throws Exception{
  for(java.util.Map.Entry<Member,XC_MethodHook> e:XposedBridge.hooks.entrySet())if(e.getKey().getDeclaringClass().getName().equals(owner)&&e.getKey().getName().equals(name)){
   Method m=e.getValue().getClass().getDeclaredMethod(when,XC_MethodHook.MethodHookParam.class);m.setAccessible(true);Param p=new Param();p.thisObject=receiver;p.args=args;m.invoke(e.getValue(),p);return p;
  }throw new AssertionError("Hook absent "+name);
 }
 static Object fragment(String id)throws Exception{
  Object f=Class.forName("X.01Sn").getConstructor().newInstance(),c=Class.forName("X.01TB").getConstructor().newInstance(),k=Class.forName("com.instagram.model.direct.DirectThreadKey").getConstructor().newInstance();
  k.getClass().getField("A00").set(k,id);c.getClass().getField("testKey").set(c,k);f.getClass().getField("A02").set(f,c);return f;
 }
 static Object current()throws Exception{return keep.getField("currentThreadId").get(null);}
 public static void main(String[] args)throws Exception{
  Class<?> helper=Class.forName("ps.reso.instaeclipse.mods.ghost.DirectCompatibility450");keep=Class.forName("ps.reso.instaeclipse.mods.ghost.KeepUnsentMessagesHook");ClassLoader cl=helper.getClassLoader();
  helper.getMethod("installThreadTracker",ClassLoader.class).invoke(null,cl);helper.getMethod("installEphemeralGuard",ClassLoader.class).invoke(null,cl);
  check(XposedBridge.hooks.size()==3,"all three exact hooks registered");
  Object f1=fragment("101"),f2=fragment("202");fire("X.01Sn","onResume","afterHookedMethod",f1);check("101".equals(current()),"resumed chat supplies current thread ID");
  fire("X.01Sn","onResume","afterHookedMethod",f2);check("202".equals(current()),"switching chats updates thread ID");
  fire("X.01Sn","onPause","afterHookedMethod",f1);check("202".equals(current()),"old chat pause cannot clear new chat");
  fire("X.01Sn","onPause","afterHookedMethod",f2);check(current()==null,"active chat pause clears thread ID");
  Object empty=fragment(null);fire("X.01Sn","onResume","afterHookedMethod",empty);check(current()==null,"absent ID does not reuse previous chat");
  Field flag=Class.forName("ps.reso.instaeclipse.utils.feature.FeatureFlags").getField("keepEphemeralMessages");flag.setBoolean(null,true);
  Param p=fire("X.04k3","A0Z","beforeHookedMethod",null,false);check(p.replaced&&Boolean.FALSE.equals(p.result),"enabled flag prevents timed deletion with boolean return");
  p=fire("X.04k3","A0Z","beforeHookedMethod",null,true);check(!p.replaced,"forced removal remains native");
  flag.setBoolean(null,false);p=fire("X.04k3","A0Z","beforeHookedMethod",null,false);check(!p.replaced,"disabled flag leaves native deletion unchanged");
  System.out.println("DIRECT_ASSERTIONS="+n+"; ANDROID_RUNTIME_TESTS=0");
 }
}
