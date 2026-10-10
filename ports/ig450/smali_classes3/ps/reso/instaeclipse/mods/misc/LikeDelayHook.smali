.class public final Lps/reso/instaeclipse/mods/misc/LikeDelayHook;
.super Ljava/lang/Object;
.source "LikeDelayHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/misc/LikeDelayHook$NativeStore;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/reflect/Field;

.field private actionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private claim:Ljava/lang/reflect/Method;

.field private enqueue:Ljava/lang/reflect/Method;

.field private inFlight:Ljava/lang/reflect/Field;

.field private likeStore:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/reflect/Field;

.field private managerForSession:Ljava/lang/reflect/Method;

.field private managerStores:Ljava/lang/reflect/Field;

.field private mediaId:Ljava/lang/reflect/Field;

.field private pending:Ljava/lang/reflect/Field;

.field private queuedAt:Ljava/lang/reflect/Field;

.field private final queues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lps/reso/instaeclipse/mods/misc/LikeDelayQueue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private remove:Ljava/lang/reflect/Method;

.field private requestDrain:Ljava/lang/reflect/Method;

.field private restore:Ljava/lang/reflect/Method;

.field private session:Ljava/lang/reflect/Field;

.field private final timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public static synthetic $r8$lambda$6duyFCwhay4c9wq9bD7MgLgQi3I(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;Ljava/lang/Runnable;J)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue$Cancellation;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->lambda$queue$2(Ljava/lang/Runnable;J)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue$Cancellation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9A4nfOYFQhlsU2aG5lNCSOCsz5A()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetaction(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->action:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionClass(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->actionClass:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclaim(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->claim:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenqueue(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->enqueue:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinFlight(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->inFlight:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlikeStore(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->likeStore:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlock(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->lock:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanagerForSession(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->managerForSession:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanagerStores(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->managerStores:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaId(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->mediaId:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpending(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->pending:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueuedAt(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queuedAt:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueues(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremove(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->remove:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestDrain(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->requestDrain:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrestore(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->restore:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsession(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->session:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mexisting(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;Ljava/lang/Object;)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;
    .locals 0

    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->existing(Ljava/lang/Object;)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mqueue(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;Ljava/lang/Object;)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;
    .locals 0

    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queue(Ljava/lang/Object;)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private existing(Ljava/lang/Object;)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lps/reso/instaeclipse/mods/misc/LikeDelayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "InstaEclipse-LikeDelay"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static synthetic lambda$queue$1(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method

.method private synthetic lambda$queue$2(Ljava/lang/Runnable;J)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue$Cancellation;
    .locals 2

    .line 167
    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 168
    new-instance p2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
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
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, p2, :cond_0

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " return type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private queue(Ljava/lang/Object;)Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lps/reso/instaeclipse/mods/misc/LikeDelayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;

    new-instance v2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$NativeStore;

    invoke-direct {v2, p0, p1}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$NativeStore;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;Ljava/lang/Object;)V

    new-instance v3, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$$ExternalSyntheticLambda2;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)V

    invoke-direct {v1, v2, v3, v4}, Lps/reso/instaeclipse/mods/misc/LikeDelayQueue;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayQueue$Store;Lps/reso/instaeclipse/mods/misc/LikeDelayQueue$Clock;Lps/reso/instaeclipse/mods/misc/LikeDelayQueue$Scheduler;)V

    .line 170
    iget-object v2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queues:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resolve(Ljava/lang/ClassLoader;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    # Profiles: 0 = IG448, 1 = IG449, 2 = exact IG450 build.
    const/4 v6, 0x2
    if-ne p2, v6, :profile_old_store
    const-string v0, "X.00hD"
    goto :goto_0
    :profile_old_store
    if-eqz p2, :cond_0

    .line 118
    const-string v0, "X.00CK"

    goto :goto_0

    :cond_0
    const-string v0, "X.02jD"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->likeStore:Ljava/lang/Class;

    if-ne p2, v6, :profile_old_parent
    const-string v0, "X.0FJM"
    goto :goto_1
    :profile_old_parent
    if-eqz p2, :cond_1

    .line 119
    const-string v0, "X.04Pj"

    goto :goto_1

    :cond_1
    const-string v0, "X.04y2"

    :goto_1
    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v6, :profile_old_action
    const-string v2, "X.0XGx"
    goto :goto_2
    :profile_old_action
    if-eqz p2, :cond_2

    .line 120
    const-string v2, "X.0Un1"

    goto :goto_2

    :cond_2
    const-string v2, "X.0ZLa"

    :goto_2
    invoke-static {v2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->actionClass:Ljava/lang/Class;

    .line 121
    const-string v2, "com.instagram.common.session.UserSession"

    invoke-static {v2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-ne p2, v6, :profile_old_manager
    const-string p2, "X.00hB"
    goto :goto_3
    :profile_old_manager
    if-eqz p2, :cond_3

    .line 122
    const-string p2, "X.00CH"

    goto :goto_3

    :cond_3
    const-string p2, "X.02jB"

    :goto_3
    invoke-static {p2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->likeStore:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    if-ne p2, v0, :cond_4

    .line 124
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "A0D"

    invoke-static {v0, v4, p2, v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->enqueue:Ljava/lang/reflect/Method;

    .line 125
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "A0G"

    invoke-static {v0, v4, p2, v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->claim:Ljava/lang/reflect/Method;

    .line 126
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "A0B"

    invoke-static {v0, v4, p2, v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->remove:Ljava/lang/reflect/Method;

    .line 127
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v1

    const-string v4, "A0E"

    invoke-static {v0, v4, p2, v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->restore:Ljava/lang/reflect/Method;

    .line 128
    iget-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->likeStore:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Class;

    const-string v6, "A0I"

    invoke-static {p2, v6, v3, v4}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 129
    const-string p2, "A02"

    const-class v3, Ljava/lang/Object;

    invoke-static {v0, p2, v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->lock:Ljava/lang/reflect/Field;

    .line 130
    const-string p2, "A03"

    const-class v3, Ljava/util/LinkedHashMap;

    invoke-static {v0, p2, v3}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->pending:Ljava/lang/reflect/Field;

    .line 131
    const-class p2, Ljava/util/Map;

    const-string v3, "A04"

    invoke-static {v0, v3, p2}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->inFlight:Ljava/lang/reflect/Field;

    .line 132
    const-string p2, "A05"

    invoke-static {v0, p2, v2}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->session:Ljava/lang/reflect/Field;

    .line 133
    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->actionClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->action:Ljava/lang/reflect/Field;

    .line 134
    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->actionClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    invoke-static {v0, p2, v4}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->mediaId:Ljava/lang/reflect/Field;

    .line 135
    iget-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->actionClass:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v4, "A00"

    invoke-static {p2, v4, v0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->queuedAt:Ljava/lang/reflect/Field;

    .line 136
    new-array p2, v5, [Ljava/lang/Class;

    aput-object v2, p2, v1

    invoke-static {p1, v4, p1, p2}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->managerForSession:Ljava/lang/reflect/Method;

    .line 137
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    const-string v1, "A01"

    invoke-static {p1, v1, p2, v0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->requestDrain:Ljava/lang/reflect/Method;

    .line 138
    const-class p2, Ljava/util/Map;

    invoke-static {p1, v3, p2}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->managerStores:Ljava/lang/reflect/Field;

    return-void

    .line 123
    :cond_4
    new-instance p1, Ljava/lang/NoSuchFieldException;

    const-string p2, "PendingLikeStore parent"

    invoke-direct {p1, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public install(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 11

    .line 41
    const-string v0, "A0I"

    const-string v1, "LikeDelay"

    .line 0
    const-string v2, "Unsupported Instagram build: "

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    # Check the exact 450 name AND code before selecting its bindings.
    const/4 v6, 0x1
    const-string v4, "450.0.0.50.77"
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :check_legacy_version
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J
    move-result-wide v7
    const-wide/32 v9, 0x16fbf6ae
    cmp-long v4, v7, v9
    if-nez v4, :check_legacy_version
    const/4 v4, 0x2
    goto :goto_1
    :check_legacy_version

    .line 44
    const-string v4, "449.0.0.52.84"

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    const-wide/32 v9, 0x16fa71d0

    cmp-long v4, v7, v9

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    .line 45
    const-string v7, "448.0.0.52.84"

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    const-wide/32 v9, 0x16f8ebee

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_2
    :goto_1
    invoke-direct {p0, p2, v4}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->resolve(Ljava/lang/ClassLoader;I)V

    .line 50
    const-class p1, Lps/reso/instaeclipse/utils/DeoptDiagnostic450;

    const-string p2, "deoptimizeMethod"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/reflect/Member;

    aput-object v4, v2, v5

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->claim:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {p2, v0, v2, v4}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->likeStore:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    invoke-static {p2, v0, v4, v7}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 54
    iget-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->enqueue:Ljava/lang/reflect/Method;

    new-instance p2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$1;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$1;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)V

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->claim:Ljava/lang/reflect/Method;

    new-instance p2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$2;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$2;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)V

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->remove:Ljava/lang/reflect/Method;

    new-instance p2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$3;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$3;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)V

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->restore:Ljava/lang/reflect/Method;

    new-instance p2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$4;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$4;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)V

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->managerForSession:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "onSessionWillEnd"

    new-array v0, v5, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 94
    new-instance p2, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$5;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/misc/LikeDelayHook$5;-><init>(Lps/reso/instaeclipse/mods/misc/LikeDelayHook;)V

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {v1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 107
    const-string p1, "(IE|LikeDelay) IG448/449/450 REST/Pando pending-like gate installed; runtime validation required"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    goto :goto_2

    .line 110
    :cond_3
    iget-object p2, p0, Lps/reso/instaeclipse/mods/misc/LikeDelayHook;->timer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 111
    sget-boolean p2, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->delayLikes:Z

    if-eqz p2, :cond_4

    .line 112
    sget p2, Lps/reso/instaeclipse/R$string;->ig_dialog_misc_delay_likes:I

    invoke-static {v1, p2}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setBroken(Ljava/lang/String;I)V

    .line 113
    :cond_4
    const-string p2, "(IE|LikeDelay) profile unavailable; native likes unchanged"

    invoke-static {p2, p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
