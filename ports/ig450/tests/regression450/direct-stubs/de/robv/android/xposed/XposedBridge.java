package de.robv.android.xposed;
import java.lang.reflect.Member;
import java.util.*;
/** Records installation for JVM tests; performs no native hooking. */
public class XposedBridge {
 public static Map<Member,XC_MethodHook> hooks=new LinkedHashMap<>();
 public static XC_MethodHook.Unhook hookMethod(Member m,XC_MethodHook h){hooks.put(m,h);return h.new Unhook();}
}
