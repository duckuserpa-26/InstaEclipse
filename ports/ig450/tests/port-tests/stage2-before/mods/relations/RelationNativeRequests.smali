.class final Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;
.super Ljava/lang/Object;
.source "RelationNativeRequests.java"


# instance fields
.field final activeSession:Ljava/lang/reflect/Field;

.field private final build:Ljava/lang/reflect/Method;

.field private final builderCompanion:Ljava/lang/Object;

.field private final cancel:Ljava/lang/reflect/Method;

.field private final count:Ljava/lang/reflect/Method;

.field private final factory:Ljava/lang/reflect/Method;

.field final lifecycle:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final loggedOut:Ljava/lang/reflect/Field;

.field final mainActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final parameter:Ljava/lang/reflect/Method;

.field private final parser:Ljava/lang/Object;

.field private final path:Ljava/lang/reflect/Field;

.field private final schedule:Ljava/lang/reflect/Method;

.field final sessionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final userId:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "com.instagram.mainactivity.InstagramMainActivity"

    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->mainActivity:Ljava/lang/Class;

    .line 18
    const-string v1, "com.instagram.common.session.UserSession"

    invoke-static {p1, v1}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->sessionType:Ljava/lang/Class;

    .line 19
    const-string v2, "com.instagram.base.activity.IgFragmentActivity"

    invoke-static {p1, v2}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->lifecycle:Ljava/lang/Class;

    .line 20
    const-string v2, "A05"

    invoke-static {v0, v2, v1}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->activeSession:Ljava/lang/reflect/Field;

    .line 21
    const-class v0, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getUserId"

    invoke-static {v1, v4, v0, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->userId:Ljava/lang/reflect/Method;

    .line 22
    const-string v0, "isLoggedOut"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->loggedOut:Ljava/lang/reflect/Field;

    .line 23
    const-string v0, "X.07fP"

    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "X.0AKY"

    invoke-static {p1, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 24
    const-string v4, "X.07fO"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "A01"

    invoke-static {v4, v5, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->builderCompanion:Ljava/lang/Object;

    .line 25
    const-string v4, "A00"

    invoke-static {v3, v4, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->parser:Ljava/lang/Object;

    .line 26
    const-string v3, "X.03dN"

    invoke-static {p1, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "X.07fT"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "X.00cD"

    invoke-static {p1, v5}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "X.0PiP"

    invoke-static {p1, v6}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    const-string v7, "X.0224"

    invoke-static {p1, v7}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v2

    const-string v0, "X.0onk"

    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const-string v1, "A0L"

    invoke-static {v7, v1, v4, v8}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->factory:Ljava/lang/reflect/Method;

    .line 30
    const-string v1, "A0H"

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->path:Ljava/lang/reflect/Field;

    .line 31
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v9

    const-string v7, "A0F"

    invoke-static {v3, v7, v1, v4}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->parameter:Ljava/lang/reflect/Method;

    .line 32
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v9

    const-string v4, "A0C"

    invoke-static {v3, v4, v1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->count:Ljava/lang/reflect/Method;

    .line 33
    const-string v0, "X.098i"

    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "A0K"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v5, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->build:Ljava/lang/reflect/Method;

    .line 34
    const-string v0, "X.02rk"

    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v3, v9, [Ljava/lang/Class;

    invoke-static {p1, v6}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "A03"

    invoke-static {v0, p1, v1, v3}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->schedule:Ljava/lang/reflect/Method;

    .line 35
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/Class;

    const-string v1, "cancel"

    invoke-static {v5, v1, p1, v0}, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->cancel:Ljava/lang/reflect/Method;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "request hierarchy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
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

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static varargs method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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

    .line 61
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    if-ne p3, p2, :cond_0

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
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
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method cancel(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->cancel:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method create(Ljava/lang/Object;Lps/reso/instaeclipse/mods/relations/RelationSyncRun;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->sessionType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->loggedOut:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->account:Ljava/lang/String;

    iget-object v1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->userId:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->kind:Ljava/lang/String;

    const-string v1, "followers"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->kind:Ljava/lang/String;

    const-string v1, "following"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->cursor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->factory:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->builderCompanion:Ljava/lang/Object;

    iget-object v3, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->parser:Ljava/lang/Object;

    filled-new-array {v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->path:Ljava/lang/reflect/Field;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "friendships/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->account:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->kind:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->parameter:Ljava/lang/reflect/Method;

    const-string v1, "module"

    const-string v3, "profile"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->parameter:Ljava/lang/reflect/Method;

    const-string v1, "rank_token"

    iget-object v3, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->token:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->cursor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->parameter:Ljava/lang/reflect/Method;

    const-string v1, "max_id"

    iget-object p2, p2, Lps/reso/instaeclipse/mods/relations/RelationSyncRun;->cursor:Ljava/lang/String;

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    iget-object p2, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->count:Ljava/lang/reflect/Method;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "count"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->count:Ljava/lang/reflect/Method;

    const-string v0, "filter_dismissed_users"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p2, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->build:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "own follow list only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method schedule(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lps/reso/instaeclipse/mods/relations/RelationNativeRequests;->schedule:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
