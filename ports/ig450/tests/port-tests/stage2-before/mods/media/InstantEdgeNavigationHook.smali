.class public final Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;
.super Ljava/lang/Object;
.source "InstantEdgeNavigationHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;,
        Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;,
        Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Tap;,
        Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Stack;,
        Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Session;
    }
.end annotation


# static fields
.field private static final callbacks:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap<",
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Stack;",
            ">;"
        }
    .end annotation
.end field

.field private static final composing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Stack;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile enabled:Z

.field private static failureLogged:Z

.field private static final sessions:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap<",
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Session;",
            ">;"
        }
    .end annotation
.end field

.field private static final states:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap<",
            "Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetcallbacks()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->callbacks:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetcomposing()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->composing:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetenabled()Z
    .locals 1

    sget-boolean v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->enabled:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsessions()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->sessions:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetstates()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->states:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smfailure(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->failure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfield(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->states:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    .line 16
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->sessions:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    .line 17
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->callbacks:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->composing:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static failure(Ljava/lang/Throwable;)V
    .locals 1

    .line 337
    sget-boolean v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->failureLogged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->failureLogged:Z

    const-string v0, "(IE|InstantNavigation) edge tap skipped"

    invoke-static {v0, p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 p0, 0x1

    .line 334
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v0

    .line 333
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

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static declared-synchronized install(Ljava/lang/ClassLoader;)V
    .locals 9

    const-class v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-boolean v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x1

    .line 25
    :try_start_2
    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    invoke-direct {v3, p0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    const-class p0, Lde/robv/android/xposed/XposedBridge;

    const-string v4, "deoptimizeMethod"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Member;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v4, 0x6

    .line 30
    new-array v5, v4, [Ljava/lang/reflect/Member;

    iget-object v6, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->stack:Ljava/lang/reflect/Method;

    aput-object v6, v5, v7

    iget-object v6, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pointerCreate:Ljava/lang/reflect/Method;

    aput-object v6, v5, v2

    iget-object v6, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handlerInvoke:Ljava/lang/reflect/Method;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    iget-object v6, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->screenInvoker:Ljava/lang/reflect/Method;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->tapFactory:Ljava/lang/reflect/Method;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    iget-object v6, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handlerFactory:Ljava/lang/reflect/Method;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v6, v5, v7

    if-eqz v6, :cond_1

    .line 31
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 33
    :catch_0
    :cond_2
    :try_start_4
    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->screen:Ljava/lang/reflect/Method;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;

    invoke-direct {v4, v3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;-><init>(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;)V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->stack:Ljava/lang/reflect/Method;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$2;

    invoke-direct {v4}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$2;-><init>()V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->cardSize:Ljava/lang/reflect/Method;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$3;

    invoke-direct {v4}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$3;-><init>()V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-boolean p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->v449:Z

    if-nez p0, :cond_3

    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handler:Ljava/lang/reflect/Constructor;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$4;

    invoke-direct {v4, v3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$4;-><init>(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;)V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    iget-boolean p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->v449:Z

    if-eqz p0, :cond_4

    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->handlerFactory:Ljava/lang/reflect/Method;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$5;

    invoke-direct {v4, v3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$5;-><init>(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;)V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_4
    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->tapFactory:Ljava/lang/reflect/Method;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$6;

    invoke-direct {v4, v3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$6;-><init>(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;)V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p0, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->pointerResume:Ljava/lang/reflect/Method;

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$7;

    invoke-direct {v4, v3}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$7;-><init>(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;)V

    invoke-static {p0, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v3, "null hook"

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_6
    sput-boolean v2, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->enabled:Z

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build=63 profile="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean v3, v3, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->v449:Z

    if-eqz v3, :cond_7

    const-string v3, "449.0.0.52.84"

    goto :goto_2

    :cond_7
    const-string v3, "448.0.0.52.84"

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " hooks=6 left=previous right=native-next"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 127
    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sub-int/2addr v3, v2

    :goto_3
    if-ltz v3, :cond_9

    .line 128
    :try_start_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 129
    :cond_9
    :try_start_7
    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->states:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    invoke-virtual {v1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->clear()V

    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->sessions:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    invoke-virtual {v1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->clear()V

    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->callbacks:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    invoke-virtual {v1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->clear()V

    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->composing:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unavailable; native gestures preserved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 132
    :goto_4
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

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|InstantNavigation) "

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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 328
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x1

    .line 329
    invoke-virtual {p3, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p3

    .line 328
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

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
