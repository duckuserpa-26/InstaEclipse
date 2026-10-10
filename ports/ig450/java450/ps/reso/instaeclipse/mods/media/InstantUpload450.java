package ps.reso.instaeclipse.mods.media;

import android.content.Context;
import android.graphics.Bitmap;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.lang.reflect.*;
import java.util.*;
import ps.reso.instaeclipse.utils.feature.FeatureFlags;
import ps.reso.instaeclipse.utils.feature.FeatureStatusTracker;
import ps.reso.instaeclipse.utils.log.ModuleLog;

/** Exact Instagram 450.0.0.50.77 upload contract. Device validation required. */
public final class InstantUpload450 {
    private static final String PENDING="ie.upload450.pending";
    private static boolean installed;
    static final class Bindings {
        final Method photo,video,preview;
        Bindings(ClassLoader cl)throws Exception {
            Class<?> vm=cl.loadClass("com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel");
            Class<?> cont=cl.loadClass("X.0haL");
            photo=vm.getDeclaredMethod("A01",Context.class,Bitmap.class,cl.loadClass("X.0K70"),vm,cl.loadClass("X.0TeE"),Long.class,String.class,String.class,cont,cl.loadClass("X.02ik"),cl.loadClass("X.04G3"),long.class,boolean.class);
            video=vm.getDeclaredMethod("A02",Context.class,Bitmap.class,cl.loadClass("X.0TGO"),vm,File.class,Float.class,String.class,cont,int.class,int.class,long.class);
            preview=vm.getDeclaredMethod("A05",Context.class,Bitmap.class,vm);
            for(Method m:new Method[]{photo,video,preview}){
                if(!Modifier.isStatic(m.getModifiers()))throw new NoSuchMethodException("non-static upload method");
                m.setAccessible(true);
            }
            if(photo.getReturnType()!=Object.class||video.getReturnType()!=Object.class||preview.getReturnType()!=void.class)throw new NoSuchMethodException("upload return type");
        }
    }
    // Kept separate so the argument routing is exercised without Android.
    static Object[] videoArguments(Object[] photo,Object preview,File file,int width,long now){
        if(photo==null||photo.length!=13||width<=0||file==null)throw new IllegalArgumentException("upload arguments");
        return new Object[]{photo[0],preview,null,photo[3],file,null,photo[6],photo[8],width,0,now};
    }
    public static synchronized void install(ClassLoader cl){
        if(installed)return;
        List<XC_MethodHook.Unhook> hooks=new ArrayList<>();
        try {
            final Bindings b=new Bindings(cl);
            hooks.add(XposedBridge.hookMethod(b.video,new XC_MethodHook(){
                protected void beforeHookedMethod(MethodHookParam p){
                    if(!FeatureFlags.uploadInstants)return;
                    InstantUploadHook.PendingMedia pending=InstantUploadHook.peekFresh();
                    if(pending==null||!pending.video)return;
                    pending=InstantUploadHook.takeFresh();if(pending==null)return;
                    p.args[1]=pending.preview;p.args[4]=pending.file;p.setObjectExtra(PENDING,pending);
                }
                protected void afterHookedMethod(MethodHookParam p){complete(p,"video-native-450");}
            }));
            hooks.add(XposedBridge.hookMethod(b.photo,new XC_MethodHook(){
                protected void beforeHookedMethod(MethodHookParam p){
                    if(!FeatureFlags.uploadInstants)return;
                    InstantUploadHook.PendingMedia pending=InstantUploadHook.takeFresh();
                    if(pending==null)return;
                    if(!pending.video){p.args[1]=pending.preview;p.setObjectExtra(PENDING,pending);return;}
                    try {
                        Context context=(Context)p.args[0];
                        int width=context.getResources().getDisplayMetrics().widthPixels;
                        b.preview.invoke(null,context,pending.preview,p.args[3]);
                        Object result=b.video.invoke(null,videoArguments(p.args,pending.preview,pending.file,width,System.currentTimeMillis()));
                        p.setResult(result);
                        InstantUploadHook.onConsumed(pending,"video-from-shutter-450");
                    } catch(Throwable error){
                        InstantUploadHook.arm(pending);p.setResult(null);InstantUploadHook.failureToast();
                        if(error instanceof InvocationTargetException&&error.getCause()!=null)error=error.getCause();
                        ModuleLog.line("(IE|InstantUpload450) video redirect failed",error);
                    }
                }
                protected void afterHookedMethod(MethodHookParam p){complete(p,"photo-450");}
            }));
            for(XC_MethodHook.Unhook hook:hooks)if(hook==null)throw new IllegalStateException("null upload hook");
            // Deoptimization is needed for callers which ART may already have inlined.
            try {Method d=ps.reso.instaeclipse.utils.DeoptDiagnostic450.class.getMethod("deoptimizeMethod",Member.class);d.invoke(null,b.photo);d.invoke(null,b.video);}
            catch(ReflectiveOperationException e){ModuleLog.line("(IE|InstantUpload450) deoptimization unavailable",e);}
            installed=true;FeatureStatusTracker.setHooked("UploadInstants");
            ModuleLog.line("(IE|InstantUpload450) photo/video hooks installed; runtime validation pending");
        } catch(Throwable error){
            for(int i=hooks.size()-1;i>=0;i--)try{if(hooks.get(i)!=null)hooks.get(i).unhook();}catch(Throwable ignored){}
            ModuleLog.line("(IE|InstantUpload450) install rolled back",error);
        }
    }
    private static void complete(XC_MethodHook.MethodHookParam p,String source){
        Object value=p.getObjectExtra(PENDING);
        if(!(value instanceof InstantUploadHook.PendingMedia))return;
        InstantUploadHook.PendingMedia pending=(InstantUploadHook.PendingMedia)value;
        if(p.hasThrowable()){InstantUploadHook.arm(pending);InstantUploadHook.failureToast();}
        else InstantUploadHook.onConsumed(pending,source);
    }
}
