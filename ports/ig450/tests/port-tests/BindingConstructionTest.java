import java.lang.reflect.*;
public class BindingConstructionTest {
 public static void main(String[] a)throws Exception {
  ClassLoader loader=BindingConstructionTest.class.getClassLoader();
  Class.forName("ps.reso.instaeclipse.utils.core.VerifiedInstagramBuild").getField("is450").setBoolean(null,true);
  int pass=0;boolean failed=false;
  for(String suffix:new String[]{"mods.relations.RelationNativeRequests","mods.media.InstantReplayCore$Bindings","mods.media.InstantNativeMenuHook$Bindings","mods.media.InstantEdgeNavigationHook$Bindings"}){
   try{
    Class<?> c=Class.forName("ps.reso.instaeclipse."+suffix);
    Constructor<?> ctor;
    Object b;
    if(suffix.contains("ReplayCore")||suffix.contains("NativeMenu")){ctor=c.getDeclaredConstructor(ClassLoader.class,int.class);ctor.setAccessible(true);b=ctor.newInstance(loader,450);}
    else{ctor=c.getDeclaredConstructor(ClassLoader.class);ctor.setAccessible(true);b=ctor.newInstance(loader);}
    if(suffix.contains("NativeMenu")){Method m=c.getDeclaredMethod("newItem",String.class,int.class);m.setAccessible(true);if(m.invoke(b,"Download",-2048002)==null)throw new AssertionError("null item");}
    System.out.println("PASS actual DEX binding constructor against APK-derived structural fixtures: "+suffix);pass++;
   }catch(Throwable t){failed=true;System.out.println("FAIL "+suffix);while(t instanceof InvocationTargetException)t=((InvocationTargetException)t).getCause();t.printStackTrace(System.out);}
  }
  System.out.println("RESULT binding_construction="+pass+" Android_runtime=0; fixtures do not simulate Instagram behavior");
  if(failed)System.exit(1);
 }
}
