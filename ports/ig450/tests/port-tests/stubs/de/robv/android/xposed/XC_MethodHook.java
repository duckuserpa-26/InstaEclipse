package de.robv.android.xposed;
/** Compilation fixture only. No hooking is performed. */
public class XC_MethodHook {
 public static class MethodHookParam {
  public Object thisObject;public Object[] args;
  public void setObjectExtra(String key,Object value){} public Object getObjectExtra(String key){return null;}
  public boolean hasThrowable(){return false;} public void setResult(Object result){}
 }
 public class Unhook {public void unhook(){}}
 protected void beforeHookedMethod(MethodHookParam p)throws Throwable{}
 protected void afterHookedMethod(MethodHookParam p)throws Throwable{}
}
