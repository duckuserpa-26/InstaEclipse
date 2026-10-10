.class Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "DirectCompatibility450.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->installThreadTracker(Ljava/lang/ClassLoader;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .prologue
  .line 38
    invoke-direct { p0 }, Lde/robv/android/xposed/XC_MethodHook;-><init>()V
    return-void
.end method

.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .registers 4
  .prologue
  .line 40
    invoke-static { }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->access$000()Ljava/lang/ref/WeakReference;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;
    if-ne v0, v1, :L0
    invoke-static { }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->access$000()Ljava/lang/ref/WeakReference;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->clear()V
    const/4 v0, 0
    sput-object v0, Lps/reso/instaeclipse/mods/ghost/KeepUnsentMessagesHook;->currentThreadId:Ljava/lang/String;
  :L0
  .line 41
    return-void
.end method
