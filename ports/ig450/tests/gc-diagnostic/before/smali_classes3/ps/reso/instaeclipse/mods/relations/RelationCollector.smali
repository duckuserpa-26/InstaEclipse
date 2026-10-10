.class public final Lps/reso/instaeclipse/mods/relations/RelationCollector;
.super Ljava/lang/Object;
.source "RelationCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/relations/RelationCollector$Capture;
    }
.end annotation


# static fields
.field private static final INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final IO:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final JSON:Lcom/google/gson/Gson;

.field private static final PENDING:Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lps/reso/instaeclipse/mods/relations/RelationCaptureMap<",
            "Lps/reso/instaeclipse/mods/relations/RelationCollector$Capture;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER:Landroid/net/Uri;

.field private static final SAMPLES:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TAG:Ljava/lang/String; = "(IE|Relations) "

.field private static context:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPENDING()Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->PENDING:Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smenqueue(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsample(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsend(Lps/reso/instaeclipse/mods/relations/RelationData$Message;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->send(Lps/reso/instaeclipse/mods/relations/RelationData$Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->SAMPLES:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v0, Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;

    invoke-direct {v0}, Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->PENDING:Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;

    .line 30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->JSON:Lcom/google/gson/Gson;

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lps/reso/instaeclipse/mods/relations/RelationCollector$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lps/reso/instaeclipse/mods/relations/RelationCollector$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->IO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    const-string v0, "content://ps.reso.instaeclipse.relations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectorStatus(Ljava/lang/String;)V
    .locals 1

    .line 197
    new-instance v0, Lps/reso/instaeclipse/mods/relations/RelationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueue(Ljava/lang/Runnable;)V
    .locals 2

    .line 204
    :try_start_0
    sget-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->IO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lps/reso/instaeclipse/mods/relations/RelationCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    const-string p0, "queue_limit"

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 1
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

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    .line 213
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static install(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 29

    move-object/from16 v0, p1

    .line 46
    const-string v1, "A01"

    const-string v2, "A09"

    const-string v3, "com.instagram.android"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    :goto_0
    sput-object v3, Lps/reso/instaeclipse/mods/relations/RelationCollector;->context:Landroid/content/Context;

    .line 48
    sget-boolean v3, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z

    if-nez v3, :cond_2

    const-string v0, "unsupported"

    invoke-static {v0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->collectorStatus(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_2
    sget-object v3, Lps/reso/instaeclipse/mods/relations/RelationCollector;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 50
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :try_start_0
    const-string v6, "com.instagram.common.session.UserSession"

    invoke-static {v0, v6}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 53
    const-string v7, "X.06c1"

    invoke-static {v0, v7}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 55
    const-string v8, "getUserId"

    const-class v9, Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/Class;

    invoke-static {v6, v8, v9, v10}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 56
    const-string v9, "com.instagram.api.tigon.TigonServiceLayer"

    invoke-static {v0, v9}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 57
    const-string v10, "X.03qp"

    invoke-static {v0, v10}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 58
    const-string v11, "X.03qw"

    invoke-static {v0, v11}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 59
    const-string v12, "X.03rs"

    invoke-static {v0, v12}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 60
    const-string v13, "X.07cr"

    invoke-static {v0, v13}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 61
    const-string v14, "session"

    invoke-static {v9, v14, v7}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 62
    const-class v14, Ljava/net/URI;

    invoke-static {v10, v2, v14}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 63
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v1, v15}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 64
    const-string v5, "makeTigonCallbacks"

    const-string v4, "X.03xc"

    invoke-static {v0, v4}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v17, v15

    const/4 v15, 0x7

    move-object/from16 v18, v3

    :try_start_1
    new-array v3, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v10, v3, v16

    const/16 v19, 0x1

    aput-object v11, v3, v19

    const-string v15, "com.facebook.tigon.iface.TigonRequest"

    .line 65
    invoke-static {v0, v15}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v20, v11

    const/4 v11, 0x2

    aput-object v15, v3, v11

    const/4 v15, 0x3

    aput-object v12, v3, v15

    const-string v15, "com.instagram.service.tigon.IGTigonService"

    .line 66
    invoke-static {v0, v15}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    const/16 v21, 0x4

    aput-object v15, v3, v21

    const-string v15, "com.instagram.api.tigon.IGTigonQuickPerformanceLogger"

    .line 67
    invoke-static {v0, v15}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    const/16 v22, 0x5

    aput-object v15, v3, v22

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x6

    aput-object v15, v3, v23

    .line 64
    invoke-static {v9, v5, v4, v3}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 68
    const-string v4, "A00"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v15, v11, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/4 v13, 0x1

    aput-object v10, v15, v13

    invoke-static {v12, v4, v5, v15}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 69
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v10, v13, v16

    const-class v15, Ljava/nio/ByteBuffer;

    const/4 v11, 0x1

    aput-object v15, v13, v11

    invoke-static {v12, v2, v5, v13}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    const-string v5, "A03"

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v15, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v15, v11

    invoke-static {v12, v5, v13, v15}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 71
    const-string v13, "A08"

    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v25, v9

    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v11, Ljava/io/IOException;

    const/16 v26, 0x1

    aput-object v11, v9, v26

    invoke-static {v12, v13, v15, v9}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 72
    const-string v11, "X.02Kj"

    invoke-static {v0, v11}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v13, "X.08ta"

    invoke-static {v0, v13}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 73
    invoke-static {v11, v1, v13}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    const-string v15, "A0B"

    invoke-static {v13, v15, v6}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 75
    const-string v15, "onRealtimeEventPayload"

    move-object/from16 v26, v12

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v27, v10

    const/4 v10, 0x3

    new-array v0, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v0, v16

    const-class v10, Ljava/lang/String;

    const/16 v28, 0x1

    aput-object v10, v0, v28

    const-class v10, Ljava/lang/String;

    const/16 v24, 0x2

    aput-object v10, v0, v24

    invoke-static {v11, v15, v12, v0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    new-instance v10, Lps/reso/instaeclipse/mods/relations/RelationCollector$1;

    invoke-direct {v10, v7, v6, v8, v14}, Lps/reso/instaeclipse/mods/relations/RelationCollector$1;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    invoke-static {v3, v10}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, v18

    :try_start_2
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lps/reso/instaeclipse/mods/relations/RelationCollector$2;

    move-object/from16 v7, v17

    invoke-direct {v3, v7}, Lps/reso/instaeclipse/mods/relations/RelationCollector$2;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v4, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lps/reso/instaeclipse/mods/relations/RelationCollector$3;

    invoke-direct {v3}, Lps/reso/instaeclipse/mods/relations/RelationCollector$3;-><init>()V

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lps/reso/instaeclipse/mods/relations/RelationCollector$4;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/relations/RelationCollector$4;-><init>()V

    invoke-static {v5, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v2, Lps/reso/instaeclipse/mods/relations/RelationCollector$5;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/relations/RelationCollector$5;-><init>()V

    invoke-static {v9, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v2, Lps/reso/instaeclipse/mods/relations/RelationCollector$6;

    invoke-direct {v2, v13, v1, v8}, Lps/reso/instaeclipse/mods/relations/RelationCollector$6;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :try_start_3
    const-class v1, Lde/robv/android/xposed/XposedBridge;

    const-string v2, "deoptimizeMethod"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/reflect/Member;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    const-string v3, "startRequest"

    const-string v4, "X.03B7"
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v5, p1

    :try_start_4
    invoke-static {v5, v4}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v27, v8, v7

    const/4 v7, 0x1

    aput-object v20, v8, v7

    const/4 v7, 0x2

    aput-object v26, v8, v7

    move-object/from16 v7, v25

    invoke-static {v7, v3, v4, v8}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xa

    .line 162
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "X.09uv"

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const-string v4, "X.09rw"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string v4, "X.03At"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "X.0EbR"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "X.00v8"

    aput-object v4, v3, v21

    const-string v4, "X.00u8"

    aput-object v4, v3, v22

    const-string v4, "X.07ZR"

    aput-object v4, v3, v23

    const-string v4, "X.06ZI"

    const/4 v7, 0x7

    aput-object v4, v3, v7

    const-string v4, "X.03rs"

    const/16 v7, 0x8

    aput-object v4, v3, v7

    const-string v4, "X.02Kj"

    const/16 v7, 0x9

    aput-object v4, v3, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_7

    aget-object v7, v3, v4

    .line 163
    invoke-static {v5, v7}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 164
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "run"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "invoke"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "FQI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 165
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Fml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "G29"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GDi"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    move-result-object v11
    const-string v12, "A00"
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :cond_5

    :cond_4
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x0

    :catch_0
    :cond_8
    :goto_3
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :try_start_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-object/from16 v5, p1

    :catch_2
    const/4 v2, 0x0

    .line 171
    :catch_3
    :cond_9
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(IE|Relations) installed build=69 hooks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile=450 response=read_only deoptimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 172
    const-string v0, "ready"

    invoke-static {v0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->collectorStatus(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->context:Landroid/content/Context;

    invoke-static {v0, v5}, Lps/reso/instaeclipse/mods/relations/RelationAutoSync;->install(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v6, v18

    goto :goto_4

    :cond_a
    move-object v6, v3

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "session hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v3

    .line 175
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_3
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :try_start_8
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    .line 176
    :cond_b
    sget-object v1, Lps/reso/instaeclipse/mods/relations/RelationCollector;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    sget-object v1, Lps/reso/instaeclipse/mods/relations/RelationCollector;->PENDING:Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;

    invoke-virtual {v1}, Lps/reso/instaeclipse/mods/relations/RelationCaptureMap;->clear()V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Relations) installation_failed type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 179
    const-string v0, "error"

    invoke-static {v0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->collectorStatus(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method static synthetic lambda$collectorStatus$1(Ljava/lang/String;)V
    .locals 4

    .line 198
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lps/reso/instaeclipse/mods/relations/RelationCollector;->PROVIDER:Landroid/net/Uri;

    const-string v2, "collector"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    const-string p0, "history_bridge_unavailable"

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$enqueue$2(Ljava/lang/Runnable;)V
    .locals 0

    .line 204
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "observation_failed"

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "IE-Relations"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static varargs method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
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

    .line 216
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, p2, :cond_0

    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static persist(Lps/reso/instaeclipse/mods/relations/RelationData$Message;)I
    .locals 5

    const/4 v0, 0x0

    .line 187
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/relations/RelationCollector;->JSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x493e0

    if-le v1, v2, :cond_0

    const-string p0, "message_limit"

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    return v0

    .line 189
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object p0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lps/reso/instaeclipse/mods/relations/RelationCollector;->PROVIDER:Landroid/net/Uri;

    const-string v3, "ingest"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 191
    const-string v1, "error"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "history_error"

    invoke-static {v1}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_3

    .line 192
    const-string v1, "accepted"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "list_applied"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0

    .line 193
    :catch_0
    const-string p0, "history_bridge_unavailable"

    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->sample(Ljava/lang/String;)V

    return v0
.end method

.method private static sample(Ljava/lang/String;)V
    .locals 2

    .line 208
    sget-object v0, Lps/reso/instaeclipse/mods/relations/RelationCollector;->SAMPLES:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Relations) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static send(Lps/reso/instaeclipse/mods/relations/RelationData$Message;)V
    .locals 0

    .line 183
    invoke-static {p0}, Lps/reso/instaeclipse/mods/relations/RelationCollector;->persist(Lps/reso/instaeclipse/mods/relations/RelationData$Message;)I

    return-void
.end method

.method private static type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
