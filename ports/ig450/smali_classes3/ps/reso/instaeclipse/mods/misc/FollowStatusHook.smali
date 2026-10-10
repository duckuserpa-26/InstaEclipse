.class public Lps/reso/instaeclipse/mods/misc/FollowStatusHook;
.super Ljava/lang/Object;
.source "FollowStatusHook.java"


# static fields
.field private static final sHookedCallbackClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPendingCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsPendingCallbacks()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->sPendingCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smparseFollowedBy(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->parseFollowedBy(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smshowFollowToast(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->showFollowToast(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->sPendingCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->sHookedCallbackClasses:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleRequest(Ljava/net/URI;[Ljava/lang/Object;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string v0, "/api/v1/friendships/show/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 50
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x5

    .line 52
    aget-object p0, p0, v0

    .line 53
    sput-object p0, Lps/reso/instaeclipse/utils/tracker/FollowIndicatorTracker;->currentlyViewedUserId:Ljava/lang/String;

    .line 55
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    aget-object v0, p1, v1

    invoke-static {v0, p0}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->registerCallback(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_2
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    aget-object p1, p1, v1

    invoke-static {p1, p0}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->registerCallback(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$showFollowToast$0(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "("

    .line 177
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/utils/tracker/FollowIndicatorTracker;->currentlyViewedUserId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 182
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_follows_you:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_1
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_not_follows_you:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lps/reso/instaeclipse/utils/toast/CustomToast;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 188
    sput-object p0, Lps/reso/instaeclipse/utils/tracker/FollowIndicatorTracker;->currentlyViewedUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method private static parseFollowedBy(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x3

    .line 113
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->toJsonString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 114
    const-string v0, "\"followed_by\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "followed_by"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 118
    :catchall_0
    const-string v1, "\"followed_by\":true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\"followed_by\": true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static registerCallback(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 66
    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->sPendingCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 69
    sget-object v0, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->sHookedCallbackClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v1, p0, v0

    .line 73
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 76
    :cond_3
    :try_start_0
    new-instance v2, Lps/reso/instaeclipse/mods/misc/FollowStatusHook$1;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook$1;-><init>()V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static showFollowToast(Ljava/lang/String;Z)V
    .locals 2

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lps/reso/instaeclipse/mods/misc/FollowStatusHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 128
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->toJsonString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toJsonString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-gez p1, :cond_0

    goto/16 :goto_3

    .line 135
    :cond_0
    const-string v2, "followed_by"
    instance-of v1, p0, Ljava/lang/String;
    if-eqz v1, :payload_buffer
    check-cast p0, Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :cond_7
    return-object p0
    :payload_buffer
    instance-of v1, p0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 137
    :try_start_0
    move-object v1, p0

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I
    move-result v3
    # Some callbacks hand over a buffer at its write position; support both.
    if-nez v3, :payload_size
    const/4 v3, 0x0
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I
    move-result v3
    :payload_size
    const v4, 0x100000
    if-gt v3, v4, :cond_1
    new-array v4, v3, [B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    move-object v0, v3

    :cond_1
    return-object v0

    .line 146
    :catchall_0
    :cond_2
    instance-of v1, p0, [B

    if-eqz v1, :cond_3

    .line 148
    :try_start_1
    new-instance v1, Ljava/lang/String;

    move-object v3, p0

    check-cast v3, [B

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    :cond_3
    if-lez p1, :cond_7

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    .line 155
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_7

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 157
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    .line 158
    :try_start_2
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    if-eq v6, p0, :cond_5

    .line 161
    instance-of v8, v6, Ljava/lang/Number;

    if-nez v8, :cond_5

    add-int/lit8 v7, p1, -0x1

    .line 162
    invoke-static {v6, v7}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->toJsonString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 163
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_5

    return-object v6

    :catchall_2
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_7
    :goto_3
    return-object v0
.end method
