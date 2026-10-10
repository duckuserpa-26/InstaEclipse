.class public final Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;
.super Ljava/lang/Object;
.source "DirectCompatibility450.java"

.field private static active:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference",
      "<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 2
  .prologue
  .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    sput-object v0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->active:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
  .registers 1
  .prologue
  .line 13
    sget-object v0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->active:Ljava/lang/ref/WeakReference;
    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
  .registers 1
  .prologue
  .line 13
    sput-object p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->active:Ljava/lang/ref/WeakReference;
    return-object p0
.end method

.method public static installEphemeralGuard(Ljava/lang/ClassLoader;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L1
  .catch Ljava/lang/Throwable; { :L4 .. :L5 } :L1
  .registers 6
  :L0
  .prologue
  .line 48
    const-string v0, "X.04k3"
    invoke-virtual { p0, v0 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-string v1, "A0Z"
    const/4 v2, 1
    new-array v2, v2, [Ljava/lang/Class;
    const/4 v3, 0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v4, v2, v3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 49
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    if-eq v1, v2, :L3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "ephemeral contract"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 59
    move-exception v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "(IE|Direct450) ephemeral install failed: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L2
  .line 60
    return-void
  :L3
  .line 50
    const/4 v1, 1
  :L4
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 51
    new-instance v1, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$3;
    invoke-direct { v1 }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$3;-><init>()V
    invoke-static { v0, v1 }, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
  .line 57
    const-string v0, "KeepEphemeralMessages"
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
  .line 58
    const-string v0, "(IE|Direct450) timed ephemeral deletion guard installed"
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L5
    goto :L2
.end method

.method public static installThreadTracker(Ljava/lang/ClassLoader;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L2 } :L2
  .catch Ljava/lang/Throwable; { :L6 .. :L7 } :L2
  .registers 11
  .prologue
  .line 17
    const/4 v1, 0
  :L0
  .line 19
    const-string v0, "X.01Sn"
    invoke-virtual { p0, v0 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const-string v2, "X.01TB"
    invoke-virtual { p0, v2 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
  .line 20
    const-string v3, "com.instagram.model.direct.DirectThreadKey"
    invoke-virtual { p0, v3 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v3
  .line 21
    const-string v4, "A02"
    invoke-virtual { v0, v4 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v4
    const-string v5, "A00"
    invoke-virtual { v3, v5 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v5
  .line 22
    const-string v6, "A0E"
    const/4 v7, 0
    new-array v7, v7, [Ljava/lang/Class;
    invoke-virtual { v2, v6, v7 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v6
  .line 23
    invoke-virtual { v4 }, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    move-result-object v7
    if-ne v7, v2, :L1
    invoke-virtual { v6 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v2
    if-ne v2, v3, :L1
    invoke-virtual { v5 }, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    move-result-object v2
    const-class v3, Ljava/lang/String;
    if-eq v2, v3, :L5
  :L1
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v2, "thread contracts"
    invoke-direct { v0, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 44
    move-exception v0
    if-eqz v1, :L3
    invoke-virtual { v1 }, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
  :L3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "(IE|Direct450) tracker install failed: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L4
  .line 45
    return-void
  :L5
  .line 24
    const/4 v2, 1
  :L6
    invoke-virtual { v4, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
    const/4 v2, 1
    invoke-virtual { v5, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
    const/4 v2, 1
    invoke-virtual { v6, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 25
    const-class v2, Lps/reso/instaeclipse/mods/ghost/KeepUnsentMessagesHook;
    const-string v3, "rememberThreadName"
    const/4 v7, 1
    new-array v7, v7, [Ljava/lang/Class;
    const/4 v8, 0
    const-class v9, Ljava/lang/String;
    aput-object v9, v7, v8
    invoke-virtual { v2, v3, v7 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    const/4 v3, 1
    invoke-virtual { v2, v3 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 26
    const-string v3, "onResume"
    const/4 v7, 0
    new-array v7, v7, [Ljava/lang/Class;
    invoke-virtual { v0, v3, v7 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    new-instance v7, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;
    invoke-direct { v7, v4, v6, v5, v2 }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    invoke-static { v3, v7 }, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    move-result-object v1
  .line 38
    const-string v2, "onPause"
    const/4 v3, 0
    new-array v3, v3, [Ljava/lang/Class;
    invoke-virtual { v0, v2, v3 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-instance v2, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$2;
    invoke-direct { v2 }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$2;-><init>()V
    invoke-static { v0, v2 }, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
  .line 43
    const-string v0, "(IE|Direct450) foreground thread lifecycle installed"
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L7
    goto :L4
.end method
