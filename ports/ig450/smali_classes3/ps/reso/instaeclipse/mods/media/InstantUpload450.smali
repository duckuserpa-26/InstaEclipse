.class public final Lps/reso/instaeclipse/mods/media/InstantUpload450;
.super Ljava/lang/Object;
.source "InstantUpload450.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;
  }
.end annotation

.field private final static PENDING:Ljava/lang/String; = "ie.upload450.pending"

.field private static installed:Z

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 15
    invoke-static { p0, p1 }, Lps/reso/instaeclipse/mods/media/InstantUpload450;->complete(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    return-void
.end method

.method private static complete(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 86
    const-string v0, "ie.upload450.pending"
    invoke-virtual { p0, v0 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
  .line 87
    instance-of v1, v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    if-nez v1, :L1
  :L0
  .line 91
    return-void
  :L1
  .line 88
    check-cast v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
  .line 89
    invoke-virtual { p0 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z
    move-result v1
    if-eqz v1, :L2
    invoke-static { v0 }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->arm(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V
    invoke-static { }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->failureToast()V
    goto :L0
  :L2
  .line 90
    invoke-static { v0, p1 }, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->onConsumed(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Ljava/lang/String;)V
    goto :L0
.end method

.method public static declared-synchronized install(Ljava/lang/ClassLoader;)V
  .catchall { :L0 .. :L1 } :L16
  .catchall { :L3 .. :L4 } :L16
  .catch Ljava/lang/Throwable; { :L4 .. :L6 } :L6
  .catchall { :L4 .. :L6 } :L16
  .catchall { :L7 .. :L8 } :L16
  .catch Ljava/lang/Throwable; { :L10 .. :L11 } :L22
  .catchall { :L10 .. :L11 } :L16
  .catch Ljava/lang/ReflectiveOperationException; { :L12 .. :L13 } :L17
  .catch Ljava/lang/Throwable; { :L12 .. :L13 } :L6
  .catchall { :L12 .. :L13 } :L16
  .catch Ljava/lang/Throwable; { :L14 .. :L15 } :L6
  .catchall { :L14 .. :L15 } :L16
  .catch Ljava/lang/Throwable; { :L18 .. :L19 } :L6
  .catchall { :L18 .. :L19 } :L16
  .catchall { :L20 .. :L21 } :L16
  .registers 9
  .prologue
  .line 39
    const-class v3, Lps/reso/instaeclipse/mods/media/InstantUpload450;
    monitor-enter v3
  :L0
    sget-boolean v0, Lps/reso/instaeclipse/mods/media/InstantUpload450;->installed:Z
  :L1
    if-eqz v0, :L3
  :L2
  .line 84
    monitor-exit v3
    return-void
  :L3
  .line 40
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct { v4 }, Ljava/util/ArrayList;-><init>()V
  :L4
  .line 42
    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;
    invoke-direct { v1, p0 }, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;-><init>(Ljava/lang/ClassLoader;)V
  .line 43
    iget-object v0, v1, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->video:Ljava/lang/reflect/Method;
    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantUpload450$1;
    invoke-direct { v2 }, Lps/reso/instaeclipse/mods/media/InstantUpload450$1;-><init>()V
    invoke-static { v0, v2 }, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    move-result-object v0
    invoke-interface { v4, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 53
    iget-object v0, v1, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->photo:Ljava/lang/reflect/Method;
    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantUpload450$2;
    invoke-direct { v2, v1 }, Lps/reso/instaeclipse/mods/media/InstantUpload450$2;-><init>(Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;)V
    invoke-static { v0, v2 }, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    move-result-object v0
    invoke-interface { v4, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 74
    invoke-interface { v4 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L5
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L12
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;
    if-nez v0, :L5
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "null upload hook"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
  .line 80
    move-exception v0
    move-object v1, v0
  :L7
  .line 81
    invoke-interface { v4 }, Ljava/util/List;->size()I
  :L8
    move-result v0
    add-int/lit8 v0, v0, -1
    move v2, v0
  :L9
    if-ltz v2, :L20
  :L10
    invoke-interface { v4, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L11
    invoke-interface { v4, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;
    invoke-virtual { v0 }, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
  :L11
    add-int/lit8 v0, v2, -1
    move v2, v0
    goto :L9
  :L12
  .line 76
    const-class v0, Lps/reso/instaeclipse/utils/DeoptDiagnostic450;
    const-string v2, "deoptimizeMethod"
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Class;
    const/4 v6, 0
    const-class v7, Ljava/lang/reflect/Member;
    aput-object v7, v5, v6
    invoke-virtual { v0, v2, v5 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    const/4 v2, 0
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    iget-object v7, v1, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->photo:Ljava/lang/reflect/Method;
    aput-object v7, v5, v6
    invoke-virtual { v0, v2, v5 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    const/4 v2, 0
    const/4 v5, 1
    new-array v5, v5, [Ljava/lang/Object;
    const/4 v6, 0
    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->video:Ljava/lang/reflect/Method;
    aput-object v1, v5, v6
    invoke-virtual { v0, v2, v5 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L13
  .line 78
    const/4 v0, 1
  :L14
    sput-boolean v0, Lps/reso/instaeclipse/mods/media/InstantUpload450;->installed:Z
    const-string v0, "UploadInstants"
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
  .line 79
    const-string v0, "(IE|InstantUpload450) photo/video hooks installed; runtime validation pending"
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L15
    goto/16 :L2
  :L16
  .line 39
    move-exception v0
    monitor-exit v3
    throw v0
  :L17
  .line 77
    move-exception v0
  :L18
    const-string v1, "(IE|InstantUpload450) deoptimization unavailable"
    invoke-static { v1, v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
  :L19
    goto :L13
  :L20
  .line 82
    const-string v0, "(IE|InstantUpload450) install rolled back"
    invoke-static { v0, v1 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
  :L21
    goto/16 :L2
  :L22
  .line 81
    move-exception v0
    goto :L11
.end method

.method static videoArguments([Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;IJ)[Ljava/lang/Object;
  .registers 14
  .prologue
    const/4 v6, 0
    const/16 v5, 8
    const/4 v4, 6
    const/4 v2, 3
    const/4 v3, 0
  .line 35
    if-eqz p0, :L0
    array-length v0, p0
    const/16 v1, 13
    if-ne v0, v1, :L0
    if-lez p3, :L0
    if-nez p2, :L1
  :L0
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "upload arguments"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 36
    const/16 v0, 11
    new-array v0, v0, [Ljava/lang/Object;
    aget-object v1, p0, v3
    aput-object v1, v0, v3
    const/4 v1, 1
    aput-object p1, v0, v1
    const/4 v1, 2
    aput-object v6, v0, v1
    aget-object v1, p0, v2
    aput-object v1, v0, v2
    const/4 v1, 4
    aput-object p2, v0, v1
    const/4 v1, 5
    aput-object v6, v0, v1
    aget-object v1, p0, v4
    aput-object v1, v0, v4
    const/4 v1, 7
    aget-object v2, p0, v5
    aput-object v2, v0, v1
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v5
    const/16 v1, 9
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v1
    const/16 v1, 10
    invoke-static { p4, p5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    aput-object v2, v0, v1
    return-object v0
.end method
