.class Lps/reso/instaeclipse/mods/media/InstantUpload450$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "InstantUpload450.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lps/reso/instaeclipse/mods/media/InstantUpload450;->install(Ljava/lang/ClassLoader;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .prologue
  .line 43
    invoke-direct { p0 }, Lde/robv/android/xposed/XC_MethodHook;-><init>()V
    return-void
.end method

.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .registers 3
  .prologue
  .line 51
    const-string v0, "video-native-450"
    invoke-static { p1, v0 }, Lps/reso/instaeclipse/mods/media/InstantUpload450;->access$000(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .registers 6
  .prologue
  .line 45
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->uploadInstants:Z
    if-nez v0, :L1
  :L0
  .line 50
    return-void
  :L1
  .line 46
    invoke-static { }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->peekFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    move-result-object v0
  .line 47
    if-eqz v0, :L0
    iget-boolean v0, v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->video:Z
    if-eqz v0, :L0
  .line 48
    invoke-static { }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->takeFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    move-result-object v0
    if-eqz v0, :L0
  .line 49
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v2, 1
    iget-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;
    aput-object v3, v1, v2
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v2, 4
    iget-object v3, v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->file:Ljava/io/File;
    aput-object v3, v1, v2
    const-string v1, "ie.upload450.pending"
    invoke-virtual { p1, v1, v0 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L0
.end method
