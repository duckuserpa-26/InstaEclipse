package ps.reso.instaeclipse.utils;

import java.lang.reflect.Member;
import ps.reso.instaeclipse.utils.log.ModuleLog;

/** Diagnostic build only: isolates explicit module deoptimization requests.
 * Vector can still perform its own runtime work when installing hooks.
 * Returning false preserves the existing success-count contract.
 */
public final class DeoptDiagnostic450 {
    private DeoptDiagnostic450() { }

    public static boolean deoptimizeMethod(Member method) {
        try {
            String target = method == null ? "null" :
                method.getDeclaringClass().getName() + "." + method.getName();
            ModuleLog.line("(IE|GCProbe dev6) explicit-deopt SKIPPED target=" + target);
        } catch (Throwable ignored) { }
        return false;
    }
}
