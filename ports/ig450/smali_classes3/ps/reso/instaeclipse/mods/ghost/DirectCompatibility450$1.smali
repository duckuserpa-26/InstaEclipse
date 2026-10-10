.class Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "DirectCompatibility450.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->installThreadTracker(Ljava/lang/ClassLoader;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$getter:Ljava/lang/reflect/Method;

.field final synthetic val$id:Ljava/lang/reflect/Field;

.field final synthetic val$remember:Ljava/lang/reflect/Method;

.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
  .registers 5
  .prologue
  .line 26
    iput-object p1, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$field:Ljava/lang/reflect/Field;
    iput-object p2, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$getter:Ljava/lang/reflect/Method;
    iput-object p3, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$id:Ljava/lang/reflect/Field;
    iput-object p4, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$remember:Ljava/lang/reflect/Method;
    invoke-direct { p0 }, Lde/robv/android/xposed/XC_MethodHook;-><init>()V
    return-void
.end method

.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
  .catch Ljava/lang/Throwable; { :L1 .. :L4 } :L5
  .catch Ljava/lang/Throwable; { :L6 .. :L8 } :L5
  .registers 8
  .prologue
    const/4 v1, 0
  .line 28
    invoke-virtual { p1 }, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 36
    return-void
  :L1
  .line 30
    iget-object v0, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$field:Ljava/lang/reflect/Field;
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L6
    move-object v0, v1
  :L2
  .line 31
    if-nez v0, :L7
    move-object v0, v1
  :L3
  .line 32
    new-instance v2, Ljava/lang/ref/WeakReference;
    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;
    invoke-direct { v2, v3 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    invoke-static { v2 }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
  .line 33
    sput-object v0, Lps/reso/instaeclipse/mods/ghost/KeepUnsentMessagesHook;->currentThreadId:Ljava/lang/String;
  .line 34
    if-eqz v0, :L0
    invoke-virtual { v0 }, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :L0
    iget-object v2, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$remember:Ljava/lang/reflect/Method;
    const/4 v3, 0
    const/4 v4, 1
    new-array v4, v4, [Ljava/lang/Object;
    const/4 v5, 0
    aput-object v0, v4, v5
    invoke-virtual { v2, v3, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L4
    goto :L0
  :L5
  .line 35
    move-exception v0
    invoke-static { }, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450;->access$000()Ljava/lang/ref/WeakReference;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/ref/WeakReference;->clear()V
    sput-object v1, Lps/reso/instaeclipse/mods/ghost/KeepUnsentMessagesHook;->currentThreadId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "(IE|Direct450) thread tracking failed: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    goto :L0
  :L6
  .line 30
    iget-object v2, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$getter:Ljava/lang/reflect/Method;
    const/4 v3, 0
    new-array v3, v3, [Ljava/lang/Object;
    invoke-virtual { v2, v0, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    goto :L2
  :L7
  .line 31
    iget-object v2, p0, Lps/reso/instaeclipse/mods/ghost/DirectCompatibility450$1;->val$id:Ljava/lang/reflect/Field;
    invoke-virtual { v2, v0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L8
    goto :L3
.end method
