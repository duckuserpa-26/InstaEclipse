package ps.reso.instaeclipse.mods.media;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewParent;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import ps.reso.instaeclipse.utils.log.ModuleLog;

/** Window ownership and diagnostics for profile UI; no Instagram private API. */
public final class ProfileUi450 {
    private static WeakReference<Activity> touchedActivity = new WeakReference<>(null);

    public static void capture(Activity activity) {
        touchedActivity = new WeakReference<>(activity);
    }

    public static Context context(View view) {
        if (view == null || !view.isAttachedToWindow() || view.getWindowToken() == null)
            throw new IllegalStateException("profile view detached");
        Context context = view.getContext();
        for (int i = 0; i < 16 && context != null; i++) {
            if (context instanceof Activity && owns((Activity) context, view))
                return context;
            if (!(context instanceof ContextWrapper)) break;
            Context next = ((ContextWrapper) context).getBaseContext();
            if (next == context) break;
            context = next;
        }
        Activity activity = touchedActivity.get();
        if (owns(activity, view)) return activity;
        throw new IllegalStateException("no live activity owns profile view");
    }

    private static boolean owns(Activity activity, View view) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()
                || activity.getWindow() == null) return false;
        View root = activity.getWindow().getDecorView();
        for (int i = 0; view != null && i < 64; i++) {
            if (view == root) return true;
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return false;
    }

    /** Never let error reporting itself crash the host. No URLs or account data. */
    public static void report(View view, String stage, Throwable error) {
        String type = error == null ? "Unknown" : error.getClass().getSimpleName();
        try {
            ModuleLog.line("(IE|ProfilePreview dev5) " + stage + " failed: " + type);
            Throwable current = error;
            for (int cause = 0; current != null && cause < 5; cause++) {
                ModuleLog.line("(IE|ProfilePreview dev5) cause=" + current.getClass().getName());
                StackTraceElement[] trace = current.getStackTrace();
                for (int i = 0; i < trace.length && i < 24; i++)
                    ModuleLog.line("(IE|ProfilePreview dev5) at " + trace[i]);
                Throwable next = current.getCause();
                if (next == current) break;
                current = next;
            }
        } catch (Throwable ignored) { }
        try {
            if (view != null)
                Toast.makeText(view.getContext(), "Foto profilo: " + stage + " / " + type,
                        Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) { }
    }
}
