.class public final Lps/reso/instaeclipse/mods/media/InstantReplayCore;
.super Ljava/lang/Object;
.source "InstantReplayCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;
    }
.end annotation


# static fields
.field private static final FEED:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final PERSIST:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final SAVED_SEEN:Ljava/lang/String; = "ie19.originalSeen"

.field private static final SERVER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final VIEWER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile enabled:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetFEED()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->FEED:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSIST()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->PERSIST:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSERVER()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->SERVER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVIEWER()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->VIEWER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetenabled()Z
    .locals 1

    sget-boolean v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->enabled:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smcountMedia(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->countMedia(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsample(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->sample(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->SERVER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->FEED:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->VIEWER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->PERSIST:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countMedia(Ljava/lang/Object;)I
    .locals 3

    .line 233
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 235
    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 p0, 0x1

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v0

    .line 228
    :cond_0
    new-instance p2, Ljava/lang/NoSuchFieldException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static declared-synchronized install(Ljava/lang/ClassLoader;)V
    .locals 8

    const-class v0, Lps/reso/instaeclipse/mods/media/InstantReplayCore;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-boolean v1, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 31
    :cond_0
    :try_start_1
    const-string v1, "build=63 resolving verified 449/448/447/446 signatures"

    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->log(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 34
    :try_start_2
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->resolve(Ljava/lang/ClassLoader;)Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;

    move-result-object p0

    .line 35
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentView:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 37
    :try_start_3
    const-class v4, Lps/reso/instaeclipse/utils/DeoptDiagnostic450;

    const-string v5, "deoptimizeMethod"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Member;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 38
    iget-object v5, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentView:Ljava/lang/reflect/Method;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v5, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionInvoke:Ljava/lang/reflect/Method;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v5, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentViewer:Ljava/lang/reflect/Method;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :catch_0
    :cond_1
    :try_start_4
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->serverSeen:Ljava/lang/reflect/Method;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$1;

    invoke-direct {v5}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$1;-><init>()V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionInvoke:Ljava/lang/reflect/Method;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$2;

    invoke-direct {v5}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$2;-><init>()V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->consumptionSuspend:Ljava/lang/reflect/Method;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$3;

    invoke-direct {v5, p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$3;-><init>(Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;)V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->storeConstructor:Ljava/lang/reflect/Constructor;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$4;

    invoke-direct {v5, p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$4;-><init>(Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;)V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->viewerConstructor:Ljava/lang/reflect/Constructor;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$5;

    invoke-direct {v5, p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$5;-><init>(Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;)V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentView:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->fragmentView:Ljava/lang/reflect/Method;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$6;

    invoke-direct {v5, p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$6;-><init>(Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;)V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantReplayCore$7;

    invoke-direct {v4}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$7;-><init>()V

    .line 107
    iget-object v5, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->persistSeen:Ljava/lang/reflect/Method;

    invoke-static {v5, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v5, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->flushViewer:Ljava/lang/reflect/Method;

    invoke-static {v5, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->finalFilter:Ljava/lang/reflect/Method;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantReplayCore$8;

    invoke-direct {v5}, Lps/reso/instaeclipse/mods/media/InstantReplayCore$8;-><init>()V

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v4, "hook returned null"

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_4
    sput-boolean v3, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->enabled:Z

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "build=63 profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/InstantReplayCore$Bindings;->profile:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, " installed hooks="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, " mode=session-replay native-filter=unchanged"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 122
    :try_start_5
    sput-boolean v2, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->enabled:Z

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_6

    .line 124
    :try_start_6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 127
    :cond_6
    :try_start_7
    const-string v1, "(IE|InstantsReplay26) install failed; hooks rolled back"

    invoke-static {v1, p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 129
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|InstantsReplay26) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 222
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    .line 223
    invoke-virtual {p3, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p3

    .line 222
    :cond_0
    new-instance p2, Ljava/lang/NoSuchMethodException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "."

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static noArgumentMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 218
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static noop(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 132
    const-string p0, "legacy media menu disabled"

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static sample(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 1

    .line 239
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const/16 v0, 0x8

    if-le p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " event="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantReplayCore;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
