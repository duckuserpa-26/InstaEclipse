.class Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "DirectCompatibility450.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->installEphemeralGuard(Ljava/lang/ClassLoader;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .prologue
  .line 51
    invoke-direct { p0 }, Lde/robv/android/xposed/XC_MethodHook;-><init>()V
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .registers 5
  .prologue
  .line 54
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->keepEphemeralMessages:Z
    if-eqz v0, :L0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v2, 0
    aget-object v1, v1, v2
    invoke-virtual { v0, v1 }, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { p1, v0 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
  :L0
  .line 55
    return-void
.end method
