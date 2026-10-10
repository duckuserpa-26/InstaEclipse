.class public final Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;
.super Ljava/lang/Object;
.source "ProfilePicturePreviewHook.java"


# static fields
.field private static volatile activeProfile:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static downTime:J

.field private static downX:F

.field private static downY:F

.field private static final mainHandler:Landroid/os/Handler;

.field private static pendingAvatar:Landroid/view/View;

.field private static pendingPress:Ljava/lang/Runnable;

.field private static pendingRoot:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$sfgetactiveProfile()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->activeProfile:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputactiveProfile(Ljava/lang/ref/WeakReference;)V
    .locals 0

    sput-object p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->activeProfile:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcancelPendingPress()V
    .locals 0

    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->cancelPendingPress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smobserveTouch(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->observeTouch(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->activeProfile:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 238
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|ProfilePreview) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static cancelPendingPress()V
    .locals 2

    .line 94
    sget-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 95
    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingPress:Ljava/lang/Runnable;

    .line 96
    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingAvatar:Landroid/view/View;

    .line 97
    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method private static downloadPhoto$unguardedDev5(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 373
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 374
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Download foto in corso"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_0

    .line 375
    :cond_1
    const-string v2, "A89"

    invoke-static {p2, v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 376
    :goto_0
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/lang/String;

    move-object v6, p2

    goto :goto_1

    :cond_2
    move-object v6, v1

    .line 377
    :goto_1
    const-string p2, "profile"

    invoke-static {v6, p2, v1, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 378
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 391
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static downloadPhoto(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;)V
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p3}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downloadPhoto$unguardedDev5(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;)V
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "download"
    invoke-static {p0, v1, v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method private static findAvatar(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x4

    .line 78
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "row_profile_header_imageview"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "row_profile_header_imageview_frame_layout"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "avatar_on_profile_header_view"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "profile_header_avatar_container"

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 81
    :try_start_0
    aget-object v2, v1, v3

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    goto :cond_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findAvatarUrl(Landroid/view/View;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfilePicDownloadHook;->extractUrl(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 215
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 217
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-static {v2, v3}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->findAvatarUrl(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static findTypedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 267
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 270
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 271
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 272
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 273
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "(IE|ProfilePreview) profile field inspection failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private static getImageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 305
    :cond_0
    const-string v1, "getUrl"

    invoke-static {p0, v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 306
    :goto_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static install(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 45
    :try_start_0
    const-string v0, "com.instagram.profile.fragment.UserDetailFragment"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 46
    const-string v0, "onResume"

    new-instance v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$1;

    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$1;-><init>()V

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 51
    const-string v0, "onDestroyView"

    new-instance v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;

    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;-><init>()V

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    const-string v0, "onPause"
    new-instance v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;
    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;-><init>()V
    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p0
    const-string v0, "com.instagram.base.activity.IgFragmentActivity"
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object p0

    const-string v0, "dispatchTouchEvent"

    const-class v1, Landroid/view/MotionEvent;

    new-instance v2, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$3;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$3;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 71
    const-string p0, "(IE|ProfilePreview) dev3 activity long-press observer installed"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|ProfilePreview) install failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static isInside(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 325
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isTrustedImageUrl(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 332
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 333
    const-string p0, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    .line 334
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 335
    const-string v1, ".cdninstagram.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".fbcdn.net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "instagram.com"

    .line 336
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".instagram.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method private static lambda$downloadPhoto$6$unguardedDev5(Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 389
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Download foto non riuscito"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$downloadPhoto$6(Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$downloadPhoto$6$unguardedDev5(Landroid/widget/Button;ZLandroid/view/View;)V
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "esito download"
    invoke-static {p2, v1, v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method static synthetic lambda$downloadPhoto$7(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 2

    const/4 v0, 0x0

    .line 381
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, v0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "(IE|ProfilePreview) download failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 387
    :goto_0
    sget-object p1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4, v0, p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Button;ZLandroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static lambda$observeTouch$0$unguardedDev5(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 9

    .line 123
    sget-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingRoot:Landroid/view/ViewGroup;

    if-ne v0, p0, :cond_1

    sget-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingAvatar:Landroid/view/View;

    if-ne v0, p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->cancelPendingPress()V

    .line 127
    sget-wide v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 130
    const-string v0, "(IE|ProfilePreview) long press fired"
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->showForAvatar(Landroid/view/View;Landroid/view/ViewGroup;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$observeTouch$0(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$observeTouch$0$unguardedDev5(Landroid/view/ViewGroup;Landroid/view/View;)V
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "gesto"
    invoke-static {p1, v1, v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method static synthetic lambda$showForAvatar$1(Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p0, p2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->showPreview(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "Foto profilo non disponibile in questo account"

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0
    const-string v1, "anteprima"
    invoke-static {p1, v1, p0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$showForAvatar$2(Landroid/view/ViewGroup;)V
    .locals 0

    .line 196
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->replayNativeTap(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static lambda$showForAvatar$3$unguardedDev5(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p6, :cond_0

    .line 196
    sget-object p1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;)V

    const-wide/16 p3, 0x50

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne p6, p0, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {p2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p3, p2, p4, p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downloadPhoto(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Foto profilo non disponibile in questo account"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$showForAvatar$3(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p6}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$showForAvatar$3$unguardedDev5(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "azione menu"
    invoke-static {p3, v1, v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method static synthetic lambda$showPreview$4(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 359
    invoke-static {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downloadPhoto(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;)V

    return-void
.end method

.method private static lambda$showPreview$5$unguardedDev5(Landroid/webkit/WebView;Landroid/content/DialogInterface;)V
    .locals 1

    .line 362
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method static synthetic lambda$showPreview$5(Landroid/webkit/WebView;Landroid/content/DialogInterface;)V
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$showPreview$5$unguardedDev5(Landroid/webkit/WebView;Landroid/content/DialogInterface;)V
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "chiusura anteprima"
    invoke-static {p0, v1, v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method private static logImageInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 311
    const-string v0, "(IE|ProfilePreview) "

    if-nez p1, :cond_0

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " absent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_0
    const-string v1, "getWidth"

    invoke-static {p1, v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    const-string v2, "getHeight"

    invoke-static {p1, v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " declared="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private static observeTouch(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 8

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_5

    .line 103
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->cancelPendingPress()V

    .line 104
    sget-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->activeProfile:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    :try_start_0
    const-string v3, "getView"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-static {p0, v3}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isInside(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->findAvatar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 111
    :cond_2
    new-array v2, v2, [I

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 115
    aget v4, v2, v4

    sub-int v7, v4, v3

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v4, v3

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-gtz v4, :cond_4

    aget v1, v2, v1

    sub-int v2, v1, v3

    int-to-float v2, v2

    cmpg-float v2, v6, v2

    if-ltz v2, :cond_4

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, v6, v1

    if-lez v1, :cond_3

    goto :goto_0

    .line 117
    :cond_3
    const-string v1, "(IE|ProfilePreview) avatar press armed"
    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    sput v5, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downX:F

    .line 118
    sput v6, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downY:F

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    sput-wide v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downTime:J

    .line 120
    sput-object p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingRoot:Landroid/view/ViewGroup;

    .line 121
    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingAvatar:Landroid/view/View;

    .line 122
    new-instance p1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    sput-object p1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingPress:Ljava/lang/Runnable;

    .line 132
    sget-object p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->mainHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 134
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->cancelPendingPress()V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|ProfilePreview) touch observer: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_5
    sget-object v3, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingRoot:Landroid/view/ViewGroup;

    if-ne v3, p0, :cond_9

    sget-object v3, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->pendingPress:Ljava/lang/Runnable;

    if-eqz v3, :cond_9

    if-ne v0, v2, :cond_7

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    mul-int/2addr p0, v2

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sget v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p0, p0

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_6

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sget v0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_9

    :cond_6
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->cancelPendingPress()V

    goto :goto_1

    :cond_7
    if-eq v0, v1, :cond_8

    const/4 p0, 0x3

    if-eq v0, p0, :cond_8

    const/4 p0, 0x5

    if-ne v0, p0, :cond_9

    .line 144
    :cond_8
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->cancelPendingPress()V

    :cond_9
    :goto_1
    return-void
.end method

.method private static replayNativeTap$unguardedDev5(Landroid/view/ViewGroup;)V
    .locals 13

    .line 225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 226
    new-array v0, v0, [I

    .line 227
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 228
    sget v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downX:F

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->downY:F

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, v2, v0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    move v8, v1

    move v9, v0

    .line 230
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const-wide/16 v3, 0x1e

    add-long v5, v11, v3

    const/4 v7, 0x1

    move-wide v3, v11

    .line 231
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 232
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    throw p0
.end method

.method private static replayNativeTap(Landroid/view/ViewGroup;)V
    .locals 2
    :try_start_safe
    invoke-static/range {p0 .. p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->replayNativeTap$unguardedDev5(Landroid/view/ViewGroup;)V
    :try_end_safe
    .catchall {:try_start_safe .. :try_end_safe} :catch_safe
    return-void
    :catch_safe
    move-exception v0
    const-string v1, "storie"
    invoke-static {p0, v1, v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method

.method private static resolveHdInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 290
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.instagram.api.schemas.ProfilePicUrlInfo"

    .line 292
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 293
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 294
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|ProfilePreview) HD getter inspection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 301
    :cond_2
    const-string v0, "A1C"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static resolveProfileUser(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 247
    const-string v0, "com.instagram.profile.fragment.UserDetailViewModel"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->findTypedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    const-string v1, "com.instagram.user.model.User"

    invoke-static {v0, v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->findTypedField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    const-string p0, "(IE|ProfilePreview) profile user resolved via view model"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object v0

    .line 255
    :cond_0
    const-string v0, "A0r"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const-string v0, "(IE|ProfilePreview) profile user resolved via A0r"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object p0

    .line 260
    :cond_1
    const-string p0, "(IE|ProfilePreview) profile user unavailable"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static showForAvatar(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 11

    const-string v0, "(IE|ProfilePreview) hd_multiple_profile_picture_urls count="

    .line 150
    sget-object v1, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->activeProfile:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    .line 153
    :try_start_0
    const-string v4, "getView"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_8

    check-cast v4, Landroid/view/View;

    invoke-static {v4, p0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isInside(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 155
    :cond_1
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->resolveProfileUser(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 158
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->resolveHdInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    const-string v4, "hd_profile_pic_url_info"

    invoke-static {v4, v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->logImageInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->getImageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 162
    const-string v4, "A8N"

    invoke-static {v10, v4}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 163
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/util/List;

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 165
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->getImageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    const-string v0, "hd_multiple_profile_picture_urls"

    invoke-static {v0, v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->logImageInfo(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_1

    :cond_2
    move-object v1, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 175
    :cond_4
    :goto_1
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_5

    .line 177
    const-string v0, "(IE|ProfilePreview) HD URL absent; using avatar fallback"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 178
    invoke-static {p0, v4}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->findAvatarUrl(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_5
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->isTrustedImageUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v10, :cond_6

    const-string v0, "A1g"

    invoke-static {v10, v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->callOptional(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->getImageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_6
    move-object v8, v1

    .line 183
    :goto_2
    new-instance v7, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;

    invoke-direct {v7, v8, p0, v10}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    .line 192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->context(Landroid/view/View;)Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "Storie / anteprima Instagram"

    aput-object v4, v1, v2

    const-string v4, "Foto profilo (schermo intero)"

    aput-object v4, v1, v3

    const-string v4, "Scarica foto"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    new-instance v4, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;

    move-object v5, v4

    move-object v6, p1

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;-><init>(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 202
    :cond_7
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return v3

    :cond_8
    :goto_4
    return v2

    :catchall_0
    move-exception p1
    const-string v0, "menu"
    invoke-static {p0, v0, p1}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
    return v3
.end method

.method private static showPreview(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 343
    new-instance v0, Landroid/app/Dialog;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->context(Landroid/view/View;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x103000a

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 344
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 345
    new-instance v2, Landroid/webkit/WebView;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->context(Landroid/view/View;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x1000000

    .line 346
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 347
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 348
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 349
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 350
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 351
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 352
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->context(Landroid/view/View;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v3, Landroid/widget/Button;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->context(Landroid/view/View;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 355
    const-string v5, "Scarica foto"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 356
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/16 v7, 0x51

    invoke-direct {v5, v6, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 358
    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    new-instance v5, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, p1, p2, v3}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/Button;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 361
    new-instance p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda7;

    invoke-direct {p0, v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda7;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 365
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 366
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 367
    invoke-virtual {p0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 369
    :cond_0
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
