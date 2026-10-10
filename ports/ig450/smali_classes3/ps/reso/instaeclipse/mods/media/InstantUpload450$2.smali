.class Lps/reso/instaeclipse/mods/media/InstantUpload450$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "InstantUpload450.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lps/reso/instaeclipse/mods/media/InstantUpload450;->install(Ljava/lang/ClassLoader;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$b:Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;

.method constructor <init>(Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;)V
  .registers 2
  .prologue
  .line 53
    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$2;->val$b:Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;
    invoke-direct { p0 }, Lde/robv/android/xposed/XC_MethodHook;-><init>()V
    return-void
.end method

.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .registers 3
  .prologue
  .line 72
    const-string v0, "photo-450"
    invoke-static { p1, v0 }, Lps/reso/instaeclipse/mods/media/InstantUpload450;->access$000(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .catch Ljava/lang/Throwable; { :L2 .. :L3 } :L4
  .registers 12
  .prologue
    const/4 v2, 1
    const/4 v9, 0
  .line 55
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->uploadInstants:Z
    if-nez v0, :L1
  :L0
  .line 71
    return-void
  :L1
  .line 56
    invoke-static { }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->takeFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    move-result-object v6
  .line 57
    if-eqz v6, :L0
  .line 58
    iget-boolean v0, v6, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->video:Z
    if-nez v0, :L2
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    iget-object v1, v6, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;
    aput-object v1, v0, v2
    const-string v0, "ie.upload450.pending"
    invoke-virtual { p1, v0, v6 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L0
  :L2
  .line 60
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v1, 0
    aget-object v0, v0, v1
    check-cast v0, Landroid/content/Context;
  .line 61
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v1
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I
  .line 62
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$2;->val$b:Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;
    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->preview:Ljava/lang/reflect/Method;
    const/4 v2, 0
    const/4 v4, 3
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    aput-object v0, v4, v5
    const/4 v0, 1
    iget-object v5, v6, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;
    aput-object v5, v4, v0
    const/4 v0, 2
    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v7, 3
    aget-object v5, v5, v7
    aput-object v5, v4, v0
    invoke-virtual { v1, v2, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .line 63
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$2;->val$b:Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;
    iget-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->video:Ljava/lang/reflect/Method;
    const/4 v8, 0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    iget-object v1, v6, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;
    iget-object v2, v6, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->file:Ljava/io/File;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-static/range { v0 .. v5 }, Lps/reso/instaeclipse/mods/media/InstantUpload450;->videoArguments([Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;IJ)[Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { v7, v8, v0 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 64
    invoke-virtual { p1, v0 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
  .line 65
    const-string v0, "video-from-shutter-450"
    invoke-static { v6, v0 }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->onConsumed(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Ljava/lang/String;)V
  :L3
    goto :L0
  :L4
  .line 66
    move-exception v0
  .line 67
    invoke-static { v6 }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->arm(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V
    invoke-virtual { p1, v9 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    invoke-static { }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->failureToast()V
  .line 68
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;
    if-eqz v1, :L5
    invoke-virtual { v0 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object v1
    if-eqz v1, :L5
    invoke-virtual { v0 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object v0
  :L5
  .line 69
    const-string v1, "(IE|InstantUpload450) video redirect failed"
    invoke-static { v1, v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L0
.end method
