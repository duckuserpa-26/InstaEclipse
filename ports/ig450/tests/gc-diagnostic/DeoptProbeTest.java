import java.lang.reflect.*;
import ps.reso.instaeclipse.utils.log.ModuleLog;
public class DeoptProbeTest {
 public static void sample(){}
 public static void main(String[] args)throws Exception {
  Class<?> c=Class.forName("ps.reso.instaeclipse.utils.DeoptDiagnostic450");
  Method probe=c.getMethod("deoptimizeMethod",Member.class);
  if(!Boolean.FALSE.equals(probe.invoke(null,DeoptProbeTest.class.getMethod("sample"))))throw new AssertionError();
  if(ModuleLog.lines.stream().noneMatch(s->s.contains("SKIPPED target=DeoptProbeTest.sample")))throw new AssertionError();
  if(!Boolean.FALSE.equals(probe.invoke(null,new Object[]{null})))throw new AssertionError();
  ModuleLog.fail=true;
  if(!Boolean.FALSE.equals(probe.invoke(null,DeoptProbeTest.class.getMethod("sample"))))throw new AssertionError();
  System.out.println("DEOPT_DIAGNOSTIC_JVM_ASSERTIONS=4; ANDROID_RUNTIME_TESTS=0");
 }
}
