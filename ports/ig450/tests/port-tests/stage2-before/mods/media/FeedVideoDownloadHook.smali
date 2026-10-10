.class public Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;
.super Ljava/lang/Object;
.source "FeedVideoDownloadHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;,
        Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_BTN_TAG:Ljava/lang/String; = "ie_media_download_btn"

.field private static final MAX_SCAN_DEPTH:I = 0x6

.field private static final MAX_SCAN_URLS:I = 0x14

.field private static final MAX_URLS:I = 0xc8

.field private static final MS_ROOTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG_REEL_MEDIA:I

.field private static final buttonUrls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final carouselCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static carouselMediaGetter:Ljava/lang/reflect/Method;

.field private static dictUserGetter:Ljava/lang/reflect/Method;

.field static final executor:Ljava/util/concurrent/ExecutorService;

.field private static liveTreeMediaDictClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final mainHandler:Landroid/os/Handler;

.field private static mediaAuthorGetter:Ljava/lang/reflect/Method;

.field private static mediaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mediaExtKtClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

.field private static methodImageUrl:Ljava/lang/reflect/Method;

.field static mutableMediaDictIntfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static resolvedIsVideoMethod:Ljava/lang/reflect/Method;

.field private static final resolvedVideoVersionsGetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final urlBuffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static userClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final videoUrlBuffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;",
            ">;"
        }
    .end annotation
.end field

.field static videoVersionGetUrl:Ljava/lang/reflect/Method;

.field static videoVersionIntfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile currentDownloadMediaId:Ljava/lang/String;

.field private volatile currentDownloadUsername:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0O7wYCxMl3ZdWb47CZQfZWxbhRk(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$handleMixedContent$22(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2tqJOzegEQ5uFzzIDeEni4YDzOo(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$injectDownloadButton$1(Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/Context;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HNcygQZ0jwcsBDIetM2paPaT6iA(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$downloadAndMerge$30(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuK9-nJ8gj10kAtTkF_wNs8T4H4(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Ljava/util/List;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$handleMixedContent$23(Ljava/util/List;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QzIH1myD-LHpJOnf4CE8gnmC6Fk(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Ljava/util/List;ILandroid/content/Context;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$showCarouselDialog$24(Ljava/util/List;ILandroid/content/Context;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lP6G4HLn-wyeRetrL58PvxJyf5c(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$injectDownloadButton$0(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0f96JODMbAXu8WH5E16OI3j3OQ(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$startDirectDownload$27(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$u3nlxZlqdw9RbqGYprDHG70c3rY(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$downloadAndMerge$28(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vSMTgoyV3tO6-rm_Mch2tqc7AjQ(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->lambda$downloadAndMerge$31(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minjectDownloadButton(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->injectDownloadButton(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDownloadClicked(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->onDownloadClicked(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetbuttonUrls()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buttonUrls:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgeturlBuffer()Ljava/util/Deque;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->urlBuffer:Ljava/util/Deque;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smhasAncestorWithId(Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->hasAncestorWithId(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsnapshotUrlsSince(J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->snapshotUrlsSince(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 91
    const-string v0, "ie_reel_media"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->TAG_REEL_MEDIA:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->urlBuffer:Ljava/util/Deque;

    .line 128
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlBuffer:Ljava/util/Deque;

    .line 129
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buttonUrls:Ljava/util/WeakHashMap;

    .line 130
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    .line 1759
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Download"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Downloads"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Pictures"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DCIM"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Movies"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Music"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Ringtones"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Alarms"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Notifications"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Podcasts"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Audiobooks"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->MS_ROOTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadMediaId:Ljava/lang/String;

    return-void
.end method

.method private static addVideoVersionUrl(Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 727
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlFromVersionObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 729
    :cond_0
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    .line 730
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectVideoUrlsFromDictionary(Ljava/lang/Object;Ljava/util/List;)V

    .line 737
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 738
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 739
    invoke-static {p0, v0, v1, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V

    .line 741
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 742
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "/m86/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "%2Fm86%2F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    return-object v1

    .line 743
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1635
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "unknown"

    :goto_0
    if-eqz p2, :cond_1

    .line 1636
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p3, :cond_2

    .line 1637
    const-string p3, ".mp4"

    goto :goto_2

    :cond_2
    const-string p3, ".jpg"

    .line 1638
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1639
    sget-boolean p2, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderAddTimestamp:Z

    if-eqz p2, :cond_3

    .line 1640
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd_HHmmss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildMediaStoreRelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1771
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomPath:Ljava/lang/String;

    .line 1774
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "/"

    if-nez v1, :cond_1

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1775
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1777
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1778
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 1779
    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->MS_ROOTS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Download/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1783
    :cond_1
    const-string v0, "Download/InstaEclipse"

    :goto_0
    sget-boolean v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderUsernameFolder:Z

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2459
    invoke-static {p0}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_14

    const/4 v0, 0x7

    if-gt p3, v0, :cond_14

    .line 640
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 642
    :cond_0
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->looksLikeVideoVersion(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->addVideoVersionUrl(Ljava/lang/Object;Ljava/util/List;)V

    return-void

    .line 647
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Map;

    .line 648
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    .line 649
    invoke-static {v0, p1, p2, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_0

    :cond_2
    return-void

    .line 652
    :cond_3
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    .line 653
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    .line 654
    invoke-static {v0, p1, p2, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_1

    :cond_4
    return-void

    .line 657
    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    check-cast p0, [Ljava/lang/Object;

    .line 658
    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    add-int/lit8 v4, p3, 0x1

    .line 659
    invoke-static {v3, p1, p2, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 663
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 665
    const-string v4, "X."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "com.facebook."

    const-string v7, "com.instagram."

    if-nez v5, :cond_8

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    :cond_8
    :goto_3
    if-eqz v0, :cond_e

    .line 667
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_e

    .line 668
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v5, v3

    move v8, v2

    :goto_4
    if-ge v8, v5, :cond_d

    aget-object v9, v3, v8

    .line 670
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    .line 671
    :cond_9
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 672
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_5

    .line 674
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 675
    instance-of v11, v9, Ljava/lang/Iterable;

    if-nez v11, :cond_b

    instance-of v11, v9, Ljava/util/Map;

    if-nez v11, :cond_b

    instance-of v11, v9, [Ljava/lang/Object;

    if-nez v11, :cond_b

    .line 676
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 677
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 678
    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    add-int/lit8 v10, p3, 0x1

    .line 679
    invoke-static {v9, p1, p2, v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_c
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 682
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 687
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_14

    .line 688
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_14

    .line 689
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_7
    if-ge v5, v4, :cond_13

    aget-object v6, v3, v5

    .line 690
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v7

    if-nez v7, :cond_12

    const-class v7, Ljava/util/List;

    .line 691
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_9

    .line 693
    :cond_f
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 694
    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 695
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_12

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_9

    .line 696
    :cond_10
    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoVersionsList(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 697
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->addVideoVersionUrl(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_8

    :cond_11
    add-int/lit8 v7, p3, 0x1

    .line 699
    invoke-static {v6, p1, p2, v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectAllVideoUrls(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_12
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 703
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    :cond_14
    :goto_a
    return-void
.end method

.method static collectCdnUrls(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    return-object v0
.end method

.method private static collectUrlsFromVideoVersionsMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 791
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 792
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 794
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 795
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 796
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlFromVersionObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 798
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez p3, :cond_6

    .line 800
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p3, p0, :cond_6

    :cond_5
    return-void

    .line 801
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 802
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    .line 803
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method private static collectVideoUrlsFromDictionary(Ljava/lang/Object;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 767
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 768
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    goto :goto_1

    .line 770
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {p0, v2, v3}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->findObjectOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 771
    invoke-static {v2, v1, p1, v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectUrlsFromVideoVersionsMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;Z)V

    goto :goto_0

    .line 776
    :cond_2
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 778
    :cond_3
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 779
    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 780
    :cond_5
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v0

    goto :goto_3

    .line 782
    :cond_6
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->findObjectOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_4

    const/4 v4, 0x0

    .line 783
    invoke-static {v3, v2, p1, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectUrlsFromVideoVersionsMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/List;Z)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method static copyLinkToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2294
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p0, 0x15e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static delegateUrlToCompanionApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1903
    const-string v1, "ps.reso.instaeclipse"

    const-string v2, "ps.reso.instaeclipse.mods.media.DownloadSaveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1905
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1906
    const-string p1, "audioUrl"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1907
    :cond_0
    const-string p1, "filename"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 1908
    const-string p1, "video/mp4"

    goto :goto_0

    :cond_1
    const-string p1, "image/jpeg"

    :goto_0
    const-string p2, "mimeType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1909
    const-string p1, "username"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1911
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "(IE|DL) Delegated to DownloadSaveService: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private static discoverDynamicMediaModel(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 1145
    :try_start_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v1, "MediaDownload_DictClass"

    if-eqz v0, :cond_0

    .line 1146
    :try_start_1
    invoke-static {v1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_0

    .line 1148
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1151
    :try_start_3
    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 1152
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v2

    .line 1153
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "video_to_carousel_cut_info"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1154
    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v3

    .line 1153
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v2

    .line 1152
    invoke-virtual {p0, v2}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object p0

    .line 1155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_1
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/luckypray/dexkit/result/ClassData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1158
    :try_start_4
    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/ClassData;->getFields()Lorg/luckypray/dexkit/result/FieldDataList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/luckypray/dexkit/result/FieldDataList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/luckypray/dexkit/result/FieldData;

    .line 1159
    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/luckypray/dexkit/result/FieldData;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1165
    invoke-virtual {v2, p1}, Lorg/luckypray/dexkit/result/ClassData;->getInstance(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1166
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_1

    .line 1168
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v2

    goto :goto_2

    :catchall_2
    move-object v0, v2

    goto :goto_1

    .line 1174
    :cond_3
    :goto_2
    :try_start_6
    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->resolve(Ljava/lang/ClassLoader;Ljava/lang/Class;)Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    move-result-object p0

    sput-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    .line 1175
    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->mutableDictClass:Ljava/lang/Class;

    sput-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    .line 1176
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->liveTreeDictClass:Ljava/lang/Class;

    sput-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    .line 1177
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1178
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    iget-object p1, p1, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->listCandidates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(IE|DL|DexKit) dynamic media dict="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1180
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-nez p1, :cond_4

    const-string p1, "not found"

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1179
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 1182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|DexKit) dynamic media model resolution failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private downloadAndMerge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2632
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_merging_video_audio:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2633
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda31;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "(IE|DL|Type) requested="

    .line 1848
    sget-object v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1849
    invoke-static {}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->readCompanionUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1850
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    .line 1852
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 1853
    invoke-static/range {v2 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->delegateUrlToCompanionApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 1860
    :cond_1
    const-string v1, ".bin"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ie_dl_"

    invoke-static {v3, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1862
    :try_start_0
    invoke-static {p1, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadToFileAndGetType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 1864
    const-string v2, "video/mp4"

    goto :goto_1

    :cond_2
    const-string v2, "image/jpeg"

    .line 1863
    :goto_1
    invoke-static {v1, p1, v2, p2}, Lps/reso/instaeclipse/mods/media/MediaTypeDetector;->resolve(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/MediaTypeDetector$Result;

    move-result-object p2

    .line 1865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const-string p3, "video"

    goto :goto_2

    :cond_3
    const-string p3, "image"

    :goto_2
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " response="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " detected="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Lps/reso/instaeclipse/mods/media/MediaTypeDetector$Result;->kind:Lps/reso/instaeclipse/mods/media/MediaTypeDetector$Kind;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " file="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Lps/reso/instaeclipse/mods/media/MediaTypeDetector$Result;->filename:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1868
    iget-object p1, p2, Lps/reso/instaeclipse/mods/media/MediaTypeDetector$Result;->filename:Ljava/lang/String;

    invoke-virtual {p2}, Lps/reso/instaeclipse/mods/media/MediaTypeDetector$Result;->isVideo()Z

    move-result p2

    invoke-static {p0, v1, p1, p2, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->saveFileToDestination(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1872
    throw p0
.end method

.method static downloadAndSaveTracks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1879
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->readCompanionUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    .line 1880
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 1881
    invoke-static/range {v2 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->delegateUrlToCompanionApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return v1

    .line 1884
    :cond_1
    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->prepareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1885
    :try_start_0
    invoke-static {p0, p1, p3, v1, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->saveFileToDestination(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p0
.end method

.method static downloadToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2679
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadToFileAndGetType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    return-void
.end method

.method private static downloadToFileAndGetType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2683
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 2684
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v0, 0xea60

    .line 2685
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2686
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; Android 12) AppleWebKit/537.36"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 2688
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2689
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const p1, 0x8000

    .line 2690
    :try_start_2
    new-array p1, p1, [B

    .line 2691
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2692
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2689
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 2692
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method static downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2697
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 2698
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; Android 12) AppleWebKit/537.36"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 2700
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v1, 0x8000

    .line 2701
    :try_start_1
    new-array v1, v1, [B

    .line 2702
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2703
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 2700
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 2703
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 2791
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static extractAllUrlsFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1944
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1950
    :cond_0
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractCarouselUrls(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 1951
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_1

    return-object v0

    .line 1954
    :cond_1
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1955
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 1957
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Post|DEBUG) carousel check: mutableMediaDictIntfClass="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1958
    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    const-string v3, "null"

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " carouselCandidates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    .line 1959
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1962
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    const/4 v4, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 1963
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1964
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1965
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(IE|Post|DEBUG) dictIntf="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_5

    move-object v6, v3

    goto :goto_1

    .line 1966
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1965
    invoke-static {v5}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    if-eqz v0, :cond_11

    .line 1968
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 1970
    :try_start_0
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1971
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_7

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_3

    :cond_7
    const/4 v7, -0x1

    .line 1972
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(IE|Post|DEBUG)   candidate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " resultType="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v6, :cond_8

    move-object v8, v3

    goto :goto_4

    .line 1973
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " size="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1972
    invoke-static {v5}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1975
    instance-of v5, v6, Ljava/util/List;

    if-eqz v5, :cond_6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v1, :cond_9

    goto :goto_2

    .line 1976
    :cond_9
    sget-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v5, :cond_a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    .line 1977
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    .line 1979
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    .line 1980
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_10

    .line 1981
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_6

    .line 1983
    :cond_b
    invoke-static {v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 1984
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1985
    :cond_c
    sget-object v9, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->methodImageUrl:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_d

    if-eqz p0, :cond_d

    .line 1987
    :try_start_1
    filled-new-array {p0, v8}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1988
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_d

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1989
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    .line 1993
    :catchall_1
    :cond_d
    :try_start_2
    invoke-static {v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->probeCdnUrlViaStringMethods(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 1994
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1995
    :cond_e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1996
    new-instance v10, Ljava/util/IdentityHashMap;

    invoke-direct {v10}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v10

    invoke-static {v8, v9, v4, v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    .line 1997
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-static {v9}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->pickBestImageUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1999
    :cond_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v6, v1, :cond_6

    return-object v5

    .line 2008
    :cond_11
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isMediaVideo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2009
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectCdnUrls(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2010
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2011
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2012
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    .line 2013
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 2016
    :cond_13
    const-string p0, "(IE|Post|DL) media is video but no video URL was resolved; refusing image cover fallback"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 2018
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2022
    :cond_14
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->imageUrlFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2023
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 2026
    :cond_15
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->collectCdnUrls(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2027
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 2029
    :cond_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static extractCarouselUrls(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2039
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2041
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2043
    :cond_1
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    .line 2044
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x5

    .line 2043
    invoke-static {p1, v0, v2}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->findObjectOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 2047
    :cond_2
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2048
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    goto :goto_2

    .line 2050
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 2053
    :cond_5
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2054
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2055
    :cond_6
    invoke-static {p0, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->imageUrlFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2056
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2057
    :cond_7
    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->methodImageUrl:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    if-eqz p0, :cond_4

    .line 2059
    :try_start_1
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2060
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    .line 2066
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Post) extractCarouselUrls: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object v1
.end method

.method static extractUsernameFromMediaObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2434
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2436
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2437
    invoke-static {v1}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    return-object v1

    .line 2442
    :catchall_0
    :cond_1
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    if-nez v1, :cond_2

    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 2445
    :cond_2
    :try_start_1
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2447
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2448
    invoke-static {p0}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    return-object p0

    :catchall_1
    :cond_3
    return-object v0
.end method

.method private static findCarouselPosition(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 2584
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2585
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2587
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    .line 2588
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->searchForPager(Landroid/view/ViewGroup;I)I

    move-result p0

    if-ltz p0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method static findFieldAssignableTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 991
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 992
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 993
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 994
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 995
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 997
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    return-object v5

    :catchall_0
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1002
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static findFieldOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-gez p2, :cond_0

    goto/16 :goto_5

    .line 954
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 955
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_3

    .line 956
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 957
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 958
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 959
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 962
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez p2, :cond_8

    .line 965
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_8

    .line 966
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_8

    .line 967
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 968
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 970
    :try_start_1
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_4

    .line 972
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 973
    const-string v9, "X."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.instagram."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "com.facebook."

    .line 974
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, p2, -0x1

    .line 975
    invoke-static {v7, p1, v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findFieldOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_6

    return-object v7

    :catchall_1
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 979
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_5
    return-object v0
.end method

.method private static findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1008
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1009
    invoke-static {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->findDictionary(Ljava/lang/Object;Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1012
    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findFieldAssignableTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1013
    :cond_1
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findFieldAssignableTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static findOrCreateSafDir(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1723
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1724
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "document_id"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const-string v3, "_display_name"

    const/4 v7, 0x1

    aput-object v3, v2, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 1728
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1729
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1730
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1733
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 1724
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0

    :cond_3
    if-eqz v0, :cond_4

    .line 1733
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1734
    :cond_4
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1735
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "vnd.android.document/directory"

    invoke-static {p0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    .line 1737
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "SAF createDocument (dir) returned null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static findVideoUrlInObject(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const/4 v1, 0x5

    if-gt p2, v1, :cond_b

    .line 580
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 581
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v1, :cond_b

    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 584
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 586
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 587
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 594
    :catchall_0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 596
    const-string v4, "X."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "com.facebook."

    const-string v7, "com.instagram."

    if-nez v5, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    :cond_3
    :goto_0
    if-eqz v1, :cond_b

    .line 598
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_b

    .line 599
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v5, v3

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_a

    aget-object v9, v3, v8

    .line 601
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x1

    .line 602
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 603
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    goto :goto_2

    .line 606
    :cond_5
    instance-of v11, v9, Ljava/util/List;

    if-eqz v11, :cond_7

    check-cast v9, Ljava/util/List;

    .line 608
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :catchall_1
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 609
    sget-object v11, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_6

    .line 611
    :try_start_2
    sget-object v11, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 612
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 613
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v10

    .line 621
    :cond_7
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 622
    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 623
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    add-int/2addr v10, p2

    .line 624
    invoke-static {v9, p1, v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findVideoUrlInObject(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_9

    return-object v9

    :catchall_2
    :cond_9
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 630
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-object v0
.end method

.method private getMediaFromListener(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 1601
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1602
    invoke-static {p1, v0, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findFieldOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMediaIdFromView(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1608
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1610
    :cond_0
    :try_start_0
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getOnClickListener(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getMediaFromListener(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1612
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1613
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "row_feed_button_save"

    const-string v6, "id"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1615
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 1616
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    .line 1617
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1619
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getOnClickListener(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getMediaFromListener(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1616
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-object v0

    .line 1626
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "getId"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1627
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static getOnClickListener(Landroid/view/View;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 891
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mListenerInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 892
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 893
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 895
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mOnClickListener"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 897
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private getUsernameFromView(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1536
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1538
    :cond_0
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getOnClickListener(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getMediaFromListener(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1542
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1543
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "row_feed_button_save"

    invoke-virtual {v4, v6, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1545
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 1546
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    .line 1547
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1549
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getOnClickListener(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getMediaFromListener(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1546
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-object v0

    .line 1562
    :cond_3
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1564
    :try_start_0
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1566
    invoke-static {p1}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    return-object p1

    .line 1573
    :catchall_0
    :cond_4
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_6

    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    if-nez p1, :cond_5

    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz p1, :cond_6

    .line 1576
    :cond_5
    :try_start_1
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1578
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1580
    invoke-static {p1}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    return-object p1

    .line 1590
    :catchall_1
    :cond_6
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    const/4 v0, 0x3

    invoke-static {v1, p1, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findFieldOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1592
    invoke-static {p1}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 1597
    :cond_7
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanObjectForUsername(Ljava/lang/Object;ILjava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method private handleMixedContent(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2533
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda11;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda11;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Ljava/util/List;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private handleVideoDownload(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2551
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p3, 0x0

    .line 2552
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 2558
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showCarouselDialog(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private static hasAncestorWithId(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2783
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 2784
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast p0, Landroid/view/View;

    .line 2785
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 2784
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v0
.end method

.method static imageUrlFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1929
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->methodImageUrl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1931
    :cond_0
    :try_start_0
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1932
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move-object v1, p0

    :catchall_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method private injectDownloadButton(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 296
    const-string v1, "ie_media_download_btn"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const v1, 0x1080081

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v1, -0x1

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    const/4 v1, 0x0

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    const-string v1, "Download media"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v1, 0x22

    .line 302
    invoke-static {p3, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 304
    instance-of v2, p2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 305
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 306
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x4

    .line 307
    invoke-static {p3, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p3, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v4, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 310
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800015

    .line 311
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    .line 312
    invoke-static {p3, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 315
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buttonUrls:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0, p4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    new-instance p4, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p1, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda4;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance p4, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p1, v0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda5;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/Context;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 340
    new-instance p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda6;-><init>(Landroid/view/ViewGroup;Landroid/widget/ImageButton;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 316
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private installUriCaptureHook()V
    .locals 4

    .line 187
    :try_start_0
    const-class v0, Landroid/net/Uri;

    const-string v1, "parse"

    const-class v2, Ljava/lang/String;

    new-instance v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$1;

    invoke-direct {v3, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$1;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 206
    const-string v0, "PostDownload"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse | MediaDownload): \u274c Uri.parse hook: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static installVideoUrlCaptureHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 11

    .line 1071
    const-string v0, ": "

    .line 0
    const-string v1, "(IE|DL|DexKit) VideoVersionIntf implementors found: "

    .line 1071
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->discoverDynamicMediaModel(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 1072
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveVideoVersionsGetters(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 1073
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveCarouselGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 1074
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveIsVideoMethod(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 1075
    new-instance v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$3;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$3;-><init>()V

    .line 1087
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v3

    const-string v4, "VideoUrlCapture"

    if-eqz v3, :cond_1

    .line 1088
    invoke-static {v4, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethods(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1089
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1090
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0

    .line 1091
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|DL|DexKit) VideoUrlCapture: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method(s) from cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1092
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveUsernameGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    return-void

    .line 1098
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v3

    .line 1099
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v5

    .line 1100
    sget-boolean v6, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    if-eqz v6, :cond_2

    .line 1101
    const-string v6, "com.instagram.api.schemas.VideoVersionIntf"

    goto :goto_1

    .line 1102
    :cond_2
    const-string v6, "com.instagram.model.mediasize.VideoVersionIntf"

    :goto_1
    sget-object v7, Lorg/luckypray/dexkit/query/enums/StringMatchType;->Equals:Lorg/luckypray/dexkit/query/enums/StringMatchType;

    const/4 v8, 0x0

    .line 1100
    invoke-virtual {v5, v6, v7, v8}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->addInterface(Ljava/lang/String;Lorg/luckypray/dexkit/query/enums/StringMatchType;Z)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v5

    .line 1099
    invoke-virtual {v3, v5}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v3

    .line 1098
    invoke-virtual {p0, v3}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v3

    .line 1105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/luckypray/dexkit/result/ClassData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1110
    :try_start_1
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v6

    .line 1111
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 1112
    invoke-virtual {v5}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    const-string v9, "getUrl"

    .line 1113
    invoke-virtual {v7, v9}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    const-string v9, "java.lang.String"

    .line 1114
    invoke-virtual {v7, v9}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 1115
    invoke-virtual {v7, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 1111
    invoke-virtual {v6, v7}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v6

    .line 1110
    invoke-virtual {p0, v6}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v6

    .line 1117
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1119
    :try_start_2
    invoke-virtual {v7, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1120
    invoke-static {v7, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(IE|DL|DexKit) \u2705 Hooked getUrl() on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1122
    invoke-virtual {v5}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1121
    invoke-static {v9}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1123
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v7

    .line 1125
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(IE|DL|DexKit) \u274c Hook failed for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1126
    invoke-virtual {v5}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1125
    invoke-static {v7}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v6

    .line 1130
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(IE|DL|DexKit) \u274c findMethod failed for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1131
    invoke-virtual {v5}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1130
    invoke-static {v5}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1134
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4, v1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethods(Ljava/lang/String;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|DL|DexKit) \u274c installVideoUrlCaptureHook: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1139
    :cond_5
    :goto_4
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveUsernameGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private installViewHook()V
    .locals 3

    .line 216
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "onAttachedToWindow"

    new-instance v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$2;

    invoke-direct {v2, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$2;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse | MediaDownload): \u274c View hook: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static isCdnMediaUrl(Ljava/lang/String;)Z
    .locals 2

    .line 2741
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2742
    :cond_0
    const-string v0, "cdninstagram.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fbcdn.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 2746
    :cond_1
    const-string v0, "/t51."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-19/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2748
    :cond_2
    const-string v0, "t51.39750"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static isDarkTheme(Landroid/content/Context;)Z
    .locals 1

    .line 2114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isMediaVideo(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 747
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    goto :goto_1

    .line 749
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 751
    :cond_1
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    .line 752
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x5

    .line 751
    invoke-static {p0, v1, v2}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->findObjectOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return v0

    .line 754
    :cond_2
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 755
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :catchall_0
    :cond_3
    :goto_1
    return v0
.end method

.method static isVideoUrl(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2767
    :cond_0
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->wasCapturedAsVideo(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2768
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 2771
    const-string v1, "t50."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 2774
    :cond_2
    const-string v1, "/o1/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "%2fo1%2f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2776
    :cond_3
    const-string v1, ".mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mime_type=video"

    .line 2777
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mime%2ftype=video"

    .line 2778
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method private static isVideoVersionsList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 718
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 721
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->looksLikeVideoVersion(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_2
    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method static synthetic lambda$copyLinkToClipboard$17(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 2296
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2297
    const-string v1, "InstaEclipse"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2298
    sget p1, Lps/reso/instaeclipse/R$string;->ig_copy_link_copied:I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Post) \u274c copyLinkToClipboard: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$downloadAndMerge$28(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2645
    invoke-direct {p0, p1, p2, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$downloadAndMerge$29(Landroid/content/Context;)V
    .locals 3

    .line 2663
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_video_saved:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2664
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$downloadAndMerge$30(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2666
    invoke-direct {p0, p1, p2, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$downloadAndMerge$31(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 2635
    const-string v0, ".mp4"

    .line 0
    const-string v2, "ie_m_"

    const-string v3, "ie_a_"

    const-string v4, "ie_v_"

    .line 2635
    sget-object v5, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2636
    invoke-static {}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->readCompanionUri()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2637
    :cond_0
    sget-object v5, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    .line 2639
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, "post"

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 2640
    iget-object v0, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    iget-object v2, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadMediaId:Ljava/lang/String;

    invoke-static {v0, v6, v2, v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2642
    :try_start_0
    iget-object v7, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->delegateUrlToCompanionApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 2644
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(IE|DL) merge delegate failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 2645
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v8, v9}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda20;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    .line 2653
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    .line 2654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2655
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2656
    :try_start_2
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2657
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2658
    :try_start_4
    invoke-static {v9, v13}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadToFile(Ljava/lang/String;Ljava/io/File;)V

    move-object/from16 v0, p3

    .line 2659
    invoke-static {v0, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 2660
    iget-object v0, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    iget-object v2, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadMediaId:Ljava/lang/String;

    invoke-static {v0, v6, v2, v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2661
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mergeVideoAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-object v2, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    invoke-static {v8, v3, v0, v7, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->saveFileToDestination(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2663
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda21;

    invoke-direct {v2, v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda21;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2669
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 2671
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_4

    :catchall_1
    move-object v3, v5

    goto :goto_2

    :catchall_2
    move-object v3, v5

    move-object v4, v3

    :catchall_3
    :goto_2
    move-object v5, v13

    goto :goto_3

    :catchall_4
    move-object v3, v5

    move-object v4, v3

    .line 2666
    :goto_3
    :try_start_5
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v8, v9}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda22;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v5, :cond_2

    .line 2669
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz v4, :cond_3

    .line 2671
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v3, :cond_4

    .line 2673
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    :catchall_5
    move-exception v0

    if-eqz v5, :cond_5

    .line 2669
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    if-eqz v4, :cond_6

    .line 2671
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    if-eqz v3, :cond_7

    .line 2673
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2674
    :cond_7
    throw v0
.end method

.method private synthetic lambda$handleMixedContent$22(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    .line 2539
    iget-boolean v0, p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;->hasVideo:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;->hasAudio:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2541
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p2, p3, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2544
    :cond_0
    invoke-direct {p0, p2, p4, p5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showCarouselDialog(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleMixedContent$23(Ljava/util/List;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    .line 2534
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2535
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->probeUrl(Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;

    move-result-object v2

    .line 2536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|DL) probeUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " hasVideo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;->hasVideo:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " hasAudio="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;->hasAudio:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 2538
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda24;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda24;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$injectDownloadButton$0(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 319
    invoke-direct {p0, p1, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveUrls(Landroid/view/View;Landroid/view/View;)Ljava/util/List;

    move-result-object p3

    .line 320
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_no_media_for_post:I

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 324
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->onDownloadClicked(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$injectDownloadButton$1(Landroid/view/View;Landroid/widget/ImageButton;Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    .line 330
    sget-boolean p4, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->enablePostDownload:Z

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 331
    :cond_0
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveUrls(Landroid/view/View;Landroid/view/View;)Ljava/util/List;

    move-result-object p2

    .line 332
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 333
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_no_media:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 336
    :cond_1
    invoke-direct {p0, p3, p2, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->onDownloadClicked(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    return v1
.end method

.method static synthetic lambda$injectDownloadButton$2(Landroid/view/ViewGroup;Landroid/widget/ImageButton;)V
    .locals 1

    .line 342
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {p1}, Landroid/widget/ImageButton;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL) Cannot inject download button: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$rememberVideoUrl$3(Ljava/lang/String;Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;)Z
    .locals 0

    .line 1044
    iget-object p1, p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$saveLocalFileToGallery$4(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1811
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$saveLocalFileToGallery$5(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1813
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$saveLocalFileToGallery$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1807
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1809
    :cond_0
    const-string p0, "story"

    invoke-static {p1, p0, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 1810
    invoke-static {p4, v0, p0, p3, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->saveFileToDestination(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1811
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4, p5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1813
    :catchall_0
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda3;

    invoke-direct {p1, p4, p6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$10(Landroid/content/Context;)V
    .locals 3

    .line 2216
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_saved:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2217
    invoke-static {p0, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2216
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2217
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$11(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 2220
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_download_failed:I

    .line 2221
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2220
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2221
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$12(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 2214
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2216
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2220
    sget-object p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$13(Landroid/app/Dialog;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 2207
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2208
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 2209
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v4

    .line 2210
    const-string p0, "post"

    invoke-static {p3, p0, p4, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2211
    sget p0, Lps/reso/instaeclipse/R$string;->ig_toast_downloading:I

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    invoke-static {p5, p0, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 2212
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda33;

    move-object v0, p1

    move-object v1, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda33;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$14(ILandroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2248
    sget p0, Lps/reso/instaeclipse/R$string;->ig_toast_all_items_saved:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2249
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2251
    :cond_0
    sget v1, Lps/reso/instaeclipse/R$string;->ig_toast_items_partial_saved:I

    sub-int v2, p2, p0

    .line 2252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2251
    invoke-static {p1, v1, p0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2252
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$15(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 4

    .line 2235
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2236
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v2

    .line 2237
    const-string v3, "post"

    invoke-static {p1, v3, p2, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2239
    :try_start_0
    invoke-static {p3, v1, v3, v2, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    .line 2242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(IE|Post|DL) item failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_0

    .line 2246
    :cond_0
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda30;

    invoke-direct {p1, v0, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda30;-><init>(ILandroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$showCarouselBottomSheet$16(Landroid/app/Dialog;Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    .line 2231
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2232
    sget p0, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_all_n_items:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p6

    invoke-static {p1, p0, p6}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p6, 0x0

    invoke-static {p1, p0, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 2233
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p6, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda28;

    move-object v0, p6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda28;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-interface {p0, p6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$showCarouselDialog$24(Ljava/util/List;ILandroid/content/Context;ILandroid/content/DialogInterface;I)V
    .locals 0

    if-nez p6, :cond_0

    .line 2573
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2574
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p3, p1, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2576
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result p5

    invoke-direct {p0, p3, p2, p5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2577
    :cond_1
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_n_items:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p3, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$showCopyLinkSheet$18(Landroid/app/Dialog;Landroid/content/Context;Ljava/util/List;ILandroid/view/View;)V
    .locals 0

    .line 2368
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->copyLinkToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showCopyLinkSheet$19(FLandroid/widget/ScrollView;)V
    .locals 1

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 2380
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-le v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, p0, :cond_0

    .line 2381
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2382
    invoke-virtual {p1}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showCopyLinkSheet$20(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 2398
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2399
    const-string v1, "InstaEclipse"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2400
    sget p1, Lps/reso/instaeclipse/R$string;->ig_copy_link_copied_all:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2402
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "(IE|Post) \u274c copy all links: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$showCopyLinkSheet$21(Landroid/app/Dialog;Ljava/util/List;Landroid/content/Context;ILandroid/view/View;)V
    .locals 1

    .line 2390
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2393
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2396
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p4, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda29;

    invoke-direct {p4, p2, p0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda29;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$showPostDownloadDialog$7(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2093
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_video_saved:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_photo_saved:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2092
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2094
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showPostDownloadDialog$8(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 2098
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_download_failed:I

    .line 2099
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2098
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2099
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showPostDownloadDialog$9(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 2090
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2092
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda26;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2097
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "(IE|Post|DL) single failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 2098
    sget-object p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda27;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$startDirectDownload$25(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2620
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_video_saved:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_photo_saved:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2619
    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2621
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$startDirectDownload$26(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 2625
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_download_failed:I

    .line 2626
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2625
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2626
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$startDirectDownload$27(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2617
    :try_start_0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2619
    sget-object p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda18;

    invoke-direct {p3, p1, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2624
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "(IE|DL) download failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 2625
    sget-object p3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p4, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda19;

    invoke-direct {p4, p1, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda19;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method private static looksLikeVideoVersion(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 709
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 710
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 712
    const-string v1, "videoversion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "video_version"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "videourl"

    .line 713
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method private static makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;
    .locals 1

    .line 2128
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2129
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 p3, 0x41700000    # 15.0f

    .line 2131
    invoke-virtual {v0, p1, p3}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 2132
    invoke-virtual {v0, p1, p3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 2133
    invoke-static {p2, p1, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->roundRect(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 2134
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 p0, 0x41a00000    # 20.0f

    mul-float/2addr p0, p4

    float-to-int p0, p0

    mul-float/2addr p1, p4

    float-to-int p1, p1

    .line 2135
    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2136
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x1

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    .line 2139
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2140
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static mergeVideoAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2707
    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/MediaTrackMuxer;->merge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDownloadClicked(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2504
    invoke-direct {p0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getUsernameFromView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    .line 2505
    invoke-direct {p0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getMediaIdFromView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadMediaId:Ljava/lang/String;

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|DL) onDownloadClicked username="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 2507
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2508
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2509
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2510
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2511
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2513
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|DL) total="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2514
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2513
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2515
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "]="

    if-ge v1, v2, :cond_2

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "(IE|DL) video["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 2517
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2518
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "(IE|DL) image["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2520
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 2521
    invoke-direct/range {v1 .. v6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->handleMixedContent(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    goto :goto_3

    .line 2522
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 2523
    invoke-direct {p0, p1, v4, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->handleVideoDownload(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    goto :goto_3

    .line 2524
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_6

    .line 2525
    invoke-direct {p0, p1, v5, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showCarouselDialog(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    goto :goto_3

    .line 2526
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 2527
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static openMediaStoreOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1745
    invoke-static {p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildMediaStoreRelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1746
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1747
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string p1, "mime_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string p1, "relative_path"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    sget-object p1, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1751
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1753
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 1754
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "MediaStore openOutputStream returned null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1752
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "MediaStore insert failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static openOutputStream(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1654
    const-string p2, "video/mp4"

    goto :goto_0

    :cond_0
    const-string p2, "image/jpeg"

    .line 1657
    :goto_0
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1659
    :try_start_0
    invoke-static {p1, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->openRawPathOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse|DL) Raw path failed, trying SAF: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1667
    :cond_1
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1669
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->openSafOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(InstaEclipse|DL) SAF failed, falling back to MediaStore: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1676
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 1677
    invoke-static {p0, p1, p2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->openMediaStoreOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 1681
    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    const-string v0, "InstaEclipse"

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1682
    sget-boolean p2, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderUsernameFolder:Z

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1683
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, p2

    .line 1686
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 1687
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p2
.end method

.method private static openRawPathOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1691
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomPath:Ljava/lang/String;

    .line 1693
    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1696
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1697
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderUsernameFolder:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 1700
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1701
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create dir: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1703
    :cond_2
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p1

    .line 1694
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Not a raw file path: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static openSafOutputStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1708
    sget-object v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderCustomUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1709
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1710
    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1711
    sget-boolean v3, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->downloaderUsernameFolder:Z

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1712
    invoke-static {p0, v0, v1, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findOrCreateSafDir(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1714
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, v2, p2, p1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1716
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 1717
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "SAF openOutputStream returned null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1715
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "SAF createDocument returned null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static pickBestImageUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 878
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 879
    const-string v2, "/s150x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/s240x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/s320x"

    .line 880
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/s480x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/s640x"

    .line 881
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_s.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 885
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static probeCdnUrlViaStringMethods(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 554
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 555
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_5

    .line 556
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 557
    const-string v3, "X."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.instagram."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.facebook."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 558
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 559
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    .line 561
    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 562
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 563
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    return-object v6

    :catchall_0
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 566
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static probeUrl(Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;
    .locals 6

    .line 2711
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x0

    .line 2714
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p0, v1

    move v2, p0

    .line 2715
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2716
    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 2718
    :cond_0
    const-string v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move p0, v5

    .line 2719
    :cond_1
    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2721
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move v1, p0

    goto :goto_2

    :catchall_1
    move v2, v1

    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    move p0, v1

    .line 2722
    :goto_3
    new-instance v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;

    invoke-direct {v0, p0, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$TrackInfo;-><init>(ZZ)V

    return-object v0
.end method

.method private static readCompanionUri()Ljava/lang/String;
    .locals 4

    .line 1824
    const-string v0, ""

    :try_start_0
    new-instance v1, Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "ps.reso.instaeclipse"

    const-string v3, "instaeclipse_cache"

    invoke-direct {v1, v2, v3}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v1}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 1828
    const-string v2, "downloaderCustomUri"

    invoke-virtual {v1, v2, v0}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method static rememberVideoUrl(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_3

    .line 1041
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1042
    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlBuffer:Ljava/util/Deque;

    monitor-enter v0

    .line 1043
    :try_start_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;

    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 1044
    :cond_1
    new-instance v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1045
    new-instance v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;

    invoke-direct {v1, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1046
    :goto_0
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlBuffer:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_2

    invoke-interface {p0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 1047
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static resolveCarouselGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 6

    .line 1253
    :try_start_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const-string v2, "MediaDownload_CarouselGetter"

    if-eqz v0, :cond_0

    .line 1254
    :try_start_1
    invoke-static {v2, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1257
    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    .line 1260
    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1261
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1262
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    .line 1263
    invoke-virtual {v4, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "java.util.List"

    .line 1264
    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "carousel_media"

    .line 1265
    invoke-static {v5}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingEqStrings(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    .line 1262
    invoke-virtual {v0, v4}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1261
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 1266
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1268
    :try_start_2
    invoke-virtual {v0, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1269
    const-class v4, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1270
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1271
    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    .line 1272
    invoke-static {v2, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1277
    :cond_2
    :try_start_3
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_3

    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1278
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    invoke-interface {p1, v3, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1280
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(IE|DL|DexKit) carousel getter="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1281
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    const-string p1, "not found"

    goto :goto_1

    .line 1282
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselMediaGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1280
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 1284
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|DexKit) carousel getter resolution failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static resolveDictUserGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 11

    .line 1456
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 1459
    :cond_2
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0

    const-string v1, "DictUserGetter"

    if-eqz v0, :cond_3

    .line 1460
    invoke-static {v1, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1462
    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    return-void

    .line 1469
    :cond_3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 1470
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1471
    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_8

    .line 1474
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 1475
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 1477
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v8, v6, v5

    .line 1480
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1481
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1482
    sput-object v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    .line 1483
    invoke-static {v1, v8}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 1484
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "(IE|DL|Username) \u2705 Resolved dictUserGetter: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1489
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1501
    :cond_8
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v0, :cond_9

    .line 1503
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1504
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    .line 1505
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    .line 1506
    invoke-virtual {v2, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    .line 1507
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const-string v3, "user"

    .line 1508
    invoke-static {v3}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingEqStrings(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    .line 1504
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1503
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 1510
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1511
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/MethodData;

    invoke-virtual {p0, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1512
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1513
    sput-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->dictUserGetter:Ljava/lang/reflect/Method;

    .line 1514
    invoke-static {v1, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 1515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(IE|DL|Username) \u2705 Resolved dictUserGetter (concrete class): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1519
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|Username) \u274c dictUserGetter DexKit lookup: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1523
    :cond_9
    const-string p0, "(IE|DL|Username) \u274c Failed to resolve dictUserGetter in hierarchy"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private static resolveIsVideoMethod(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 1290
    :try_start_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "MediaDownload_IsVideo"

    if-eqz v0, :cond_0

    .line 1291
    :try_start_1
    invoke-static {v1, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    .line 1294
    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    .line 1295
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1296
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const-string v3, "void"

    .line 1297
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "asl_session_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "is_video"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "is_carousel"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 1298
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    .line 1296
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1295
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 1299
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/MethodData;

    .line 1300
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/MethodData;->getInvokes()Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/MethodDataList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/luckypray/dexkit/result/MethodData;

    .line 1301
    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/MethodData;->getParamCount()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "boolean"

    .line 1302
    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/MethodData;->getReturnTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1303
    :cond_3
    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 1304
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/MethodData;->getDeclaredClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_4

    goto :goto_0

    .line 1306
    :cond_4
    :try_start_2
    invoke-virtual {v2, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1307
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1308
    sput-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    .line 1309
    invoke-static {v1, v2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1313
    :cond_5
    :try_start_3
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 1316
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(IE|DL|DexKit) isVideo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1317
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedIsVideoMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_7

    const-string p1, "not found"

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1316
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 1319
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|DexKit) isVideo resolution failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static resolveMediaAuthorGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 8

    const-string v0, "(IE|DL|Username) \u2705 mediaAuthorGetter (Media.\"user\"): "

    .line 1427
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1429
    :cond_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1

    const-string v2, "MediaAuthorGetter"

    if-eqz v1, :cond_1

    .line 1430
    invoke-static {v2, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1431
    sput-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    return-void

    .line 1435
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 1436
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const-string v4, "com.instagram.feed.media.Media"

    .line 1437
    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const/4 v4, 0x0

    .line 1438
    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    sget-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    .line 1439
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Number;

    const v7, 0x36ebcb

    .line 1440
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingNumbers([Ljava/lang/Number;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1436
    invoke-virtual {v1, v3}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 1435
    invoke-virtual {p0, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 1441
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1442
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/MethodData;

    invoke-virtual {p0, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 1443
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1444
    sput-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaAuthorGetter:Ljava/lang/reflect/Method;

    .line 1445
    invoke-static {v2, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 1446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_0

    .line 1448
    :cond_2
    const-string p0, "(IE|DL|Username) mediaAuthorGetter: no Media \"user\" getter (older build)"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1451
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|Username) \u274c mediaAuthorGetter: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private resolveUrls(Landroid/view/View;Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->urlsFromSaveBtnListener(Landroid/view/View;)Ljava/util/List;

    move-result-object p2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|DL) Tier-1a urls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 365
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 373
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    .line 374
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 373
    const-string v2, "row_feed_button_save"

    invoke-virtual {v0, v2, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 377
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    .line 378
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "(IE|DL) Tier-1b found save btn at parent level "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 381
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->urlsFromSaveBtnListener(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL) Tier-1b urls="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 383
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 377
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private static resolveUsernameGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 11

    .line 1331
    const-string v0, "java.lang.String"

    const-string v1, "com.instagram.user.model.User"

    .line 0
    const-string v2, "(IE|DL|Username) userClass="

    .line 1331
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v3

    const-string v4, "UsernameGetter"

    const-string v5, "UserClass"

    if-eqz v3, :cond_1

    .line 1332
    invoke-static {v5}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1333
    invoke-static {v4, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v3, :cond_1

    .line 1336
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 1338
    sput-object v6, Lps/reso/instaeclipse/utils/users/UserUtils;->userUsernameGetter:Ljava/lang/reflect/Method;

    .line 1340
    :cond_0
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveDictUserGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 1341
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveMediaAuthorGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1349
    :catchall_0
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v3

    .line 1350
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "username_missing_during_update"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 1351
    invoke-virtual {v6, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v6

    .line 1350
    invoke-virtual {v3, v6}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v3

    .line 1349
    invoke-virtual {p0, v3}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v3

    .line 1353
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1354
    const-string p0, "(IE|DL|Username) \u274c username_missing_during_update not found"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 1358
    :cond_2
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/luckypray/dexkit/result/MethodData;

    invoke-virtual {v3, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    .line 1359
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->userClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1373
    :try_start_2
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v2

    .line 1374
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1375
    invoke-virtual {v3, v1}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1376
    invoke-virtual {v3, v0}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1377
    invoke-virtual {v3, v10}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Number;

    const v6, -0xfd6772a

    .line 1378
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-virtual {v3, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingNumbers([Ljava/lang/Number;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1374
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v2

    .line 1373
    invoke-virtual {p0, v2}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v2

    .line 1379
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1381
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1383
    :try_start_3
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v5

    .line 1384
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v8

    .line 1385
    invoke-virtual {v8, v1}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 1386
    invoke-virtual {v1, v0}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v0

    .line 1387
    invoke-virtual {v0, v10}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Number;

    .line 1388
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v10

    const-string v6, "full_name"

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingNumbers([Ljava/lang/Number;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v0

    .line 1384
    invoke-virtual {v5, v0}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1383
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/MethodDataList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;

    .line 1389
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1394
    :catchall_1
    :cond_3
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;

    .line 1395
    invoke-virtual {v1}, Lorg/luckypray/dexkit/result/MethodData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 1397
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;

    .line 1398
    :cond_6
    invoke-virtual {v1, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/utils/users/UserUtils;->userUsernameGetter:Ljava/lang/reflect/Method;

    .line 1399
    sget-object v0, Lps/reso/instaeclipse/utils/users/UserUtils;->userUsernameGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1400
    sget-object v0, Lps/reso/instaeclipse/utils/users/UserUtils;->userUsernameGetter:Ljava/lang/reflect/Method;

    invoke-static {v4, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(IE|DL|Username) userUsernameGetter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lps/reso/instaeclipse/utils/users/UserUtils;->userUsernameGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (excluded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1402
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full_name getter(s))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_2

    .line 1404
    :cond_7
    const-string v0, "(IE|DL|Username) \u274c userUsernameGetter not found via -265713450"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 1407
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(IE|DL|Username) \u274c userUsernameGetter resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 1410
    :goto_2
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveDictUserGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 1411
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolveMediaAuthorGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 1414
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|Username) \u274c resolveUsernameGetter: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static resolveVideoVersionsGetters(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 6

    .line 1187
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1189
    :try_start_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "MediaDownload_VideoVersionsGetters"

    if-eqz v1, :cond_1

    .line 1190
    :try_start_1
    invoke-static {v2, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethods(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1192
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1193
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1194
    const-string v1, "MediaDownload_VideoVersionsGetter"

    invoke-static {v1, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1196
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1201
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1202
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1203
    invoke-virtual {v3, v1}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const-string v4, "video_versions"

    .line 1204
    invoke-static {v4}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingEqStrings(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 1202
    invoke-virtual {v0, v3}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 1201
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 1205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1206
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1208
    :try_start_2
    invoke-virtual {v3, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1209
    const-class v4, Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1210
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1211
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1213
    sget-object v4, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1216
    :cond_4
    :try_start_3
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1217
    invoke-static {v2, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethods(Ljava/lang/String;Ljava/util/List;)V

    .line 1222
    :cond_5
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-nez p0, :cond_6

    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1223
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 1224
    invoke-static {p1, p0}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->resolve(Ljava/lang/ClassLoader;Ljava/lang/Class;)Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    move-result-object p1

    sput-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    .line 1225
    iget-object p1, p1, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->mutableDictClass:Ljava/lang/Class;

    sput-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    .line 1226
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    iget-object p1, p1, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->liveTreeDictClass:Ljava/lang/Class;

    sput-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    .line 1227
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1228
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    iget-object v0, v0, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->listCandidates:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1229
    const-string p1, "MediaDownload_DictClass"

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_6
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    .line 1233
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1235
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(IE|DL|DexKit) video_versions getters="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->resolvedVideoVersionsGetters:Ljava/util/List;

    .line 1236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1235
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 1238
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|DL|DexKit) video_versions getter resolution failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static roundRect(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 2119
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    .line 2120
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2121
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2122
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object p2
.end method

.method static saveFileToDestination(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1792
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1793
    :try_start_0
    invoke-static {p0, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->openOutputStream(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const p1, 0x8000

    .line 1794
    :try_start_1
    new-array p1, p1, [B

    .line 1795
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 1796
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 1792
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static saveLocalFileToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1805
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda14;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p0

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_b

    const/4 v0, 0x6

    if-gt p2, v0, :cond_b

    .line 912
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    goto/16 :goto_5

    .line 913
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 915
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 917
    const-string v2, "android."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "java.lang."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "java.util.concurrent."

    .line 918
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "kotlin."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 921
    :cond_2
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->tryGetUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 922
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 923
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    if-eqz v0, :cond_b

    .line 925
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_b

    .line 926
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    const/4 v6, 0x1

    .line 928
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 929
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 932
    :cond_4
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/String;

    .line 933
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 934
    :cond_5
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/util/List;

    .line 935
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, p2, 0x1

    invoke-static {v6, p1, v7, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    goto :goto_2

    .line 936
    :cond_6
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_7

    check-cast v5, [Ljava/lang/Object;

    .line 937
    array-length v6, v5

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    add-int/lit8 v9, p2, 0x1

    invoke-static {v8, p1, v9, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 939
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 940
    const-string v7, "X."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.instagram."

    .line 941
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.facebook."

    .line 942
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    add-int/lit8 v6, p2, 0x1

    .line 943
    invoke-static {v5, p1, v6, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 948
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method private static scanObjectForUsername(Ljava/lang/Object;ILjava/util/Set;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const/4 v1, 0x3

    if-gt p1, v1, :cond_7

    .line 2470
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2471
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 2475
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getUsername"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2476
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "[a-zA-Z0-9._]{1,30}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    return-object v3

    :catchall_0
    :cond_1
    if-lt p1, v1, :cond_2

    return-object v0

    .line 2485
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    .line 2486
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_7

    .line 2487
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 2488
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 2489
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_5

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_5

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    .line 2490
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2492
    :try_start_1
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v7, p1

    .line 2494
    invoke-static {v6, v7, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanObjectForUsername(Ljava/lang/Object;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_5

    return-object v6

    :catchall_1
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2498
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_7
    :goto_3
    return-object v0
.end method

.method private static searchForPager(Landroid/view/ViewGroup;I)I
    .locals 11

    const/16 v0, 0x8

    const/4 v1, -0x1

    if-le p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 2594
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2595
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    .line 2596
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "getCurrentItem"

    aput-object v6, v5, v0

    const-string v6, "getCurrentDataIndex"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move v6, v0

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v8, v5, v6

    .line 2598
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Class;

    invoke-virtual {v9, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 2599
    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2600
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2603
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    add-int/2addr v7, p1

    .line 2604
    invoke-static {v3, v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->searchForPager(Landroid/view/ViewGroup;I)I

    move-result v3

    if-ltz v3, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static showCarouselBottomSheet(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2148
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2149
    invoke-static/range {p0 .. p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    const-string v2, "#1C1C1E"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    const-string v3, "#F2F2F7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_0
    const/4 v9, -0x1

    if-eqz v1, :cond_1

    move v4, v9

    goto :goto_1

    .line 2152
    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_1
    if-eqz v1, :cond_2

    .line 2153
    const-string v5, "#AEAEB2"

    :goto_2
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_2
    const-string v5, "#6C6C70"

    goto :goto_2

    .line 2154
    :goto_3
    const-string v6, "#0A84FF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_3

    .line 2155
    const-string v7, "#3A3A3C"

    goto :goto_4

    :cond_3
    const-string v7, "#E5E5EA"

    :goto_4
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    move v10, v7

    if-eqz v1, :cond_4

    move v11, v9

    goto :goto_5

    .line 2156
    :cond_4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move v11, v2

    :goto_5
    if-eqz v1, :cond_5

    .line 2157
    const-string v1, "#48484A"

    :goto_6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_5
    const-string v1, "#C7C7CC"

    goto :goto_6

    .line 2159
    :goto_7
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 2160
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v7, 0x41a00000    # 20.0f

    .line 2161
    invoke-static {v3, v7, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->roundRect(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    mul-float/2addr v7, v8

    float-to-int v3, v7

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, v8

    float-to-int v13, v7

    const/high16 v7, 0x41e00000    # 28.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 2163
    invoke-virtual {v12, v3, v13, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2166
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2167
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x42200000    # 40.0f

    mul-float/2addr v14, v8

    float-to-int v14, v14

    const/high16 v15, 0x40800000    # 4.0f

    mul-float/2addr v15, v8

    float-to-int v15, v15

    invoke-direct {v7, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2169
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v14, v8

    float-to-int v14, v14

    .line 2170
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2171
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 2172
    invoke-static {v1, v7, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->roundRect(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2173
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2176
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2177
    sget v3, Lps/reso/instaeclipse/R$string;->ig_dl_title:I

    const/4 v14, 0x0

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2178
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v4, 0x2

    .line 2179
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    .line 2180
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2181
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2184
    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2185
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2186
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2189
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2190
    sget v3, Lps/reso/instaeclipse/R$string;->ig_dl_carousel_subtitle:I

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v0, v3, v15}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2191
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 2192
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2193
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 2196
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2197
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2198
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2200
    new-instance v15, Landroid/app/Dialog;

    invoke-direct {v15, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2201
    invoke-virtual {v15, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2204
    sget v1, Lps/reso/instaeclipse/R$string;->ig_dl_carousel_current:I

    add-int/lit8 v2, p5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2205
    invoke-static {v0, v1, v6, v9, v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;

    move-result-object v6

    .line 2206
    new-instance v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda15;

    move-object v1, v5

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object v9, v5

    move-object/from16 v5, p2

    move-object v14, v6

    move-object/from16 v6, p3

    move/from16 v16, v13

    move v13, v7

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda15;-><init>(Landroid/app/Dialog;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v14, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2225
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2228
    sget v1, Lps/reso/instaeclipse/R$string;->ig_dl_carousel_all:I

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10, v11, v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;

    move-result-object v8

    .line 2230
    new-instance v9, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda16;

    move-object v1, v9

    move-object v2, v15

    move-object/from16 v3, p0

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda16;-><init>(Landroid/app/Dialog;Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2257
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2259
    invoke-virtual {v15, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2260
    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2262
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x50

    .line 2263
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    .line 2264
    invoke-virtual {v0, v1, v13}, Landroid/view/Window;->setLayout(II)V

    .line 2266
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move/from16 v2, v16

    .line 2268
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2269
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2270
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2272
    :cond_6
    invoke-virtual {v15}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 2275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Post) \u274c showCarouselBottomSheet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method private showCarouselDialog(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2562
    invoke-static {p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findCarouselPosition(Landroid/view/View;)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v0

    .line 2563
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p3

    .line 2565
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 2566
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lps/reso/instaeclipse/R$string;->ig_dl_title:I

    new-array v2, v0, [Ljava/lang/Object;

    .line 2567
    invoke-static {p1, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    sget v2, Lps/reso/instaeclipse/R$string;->ig_dl_carousel_current:I

    add-int/lit8 v3, v5, 0x1

    .line 2569
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget v0, Lps/reso/instaeclipse/R$string;->ig_dl_carousel_all:I

    .line 2570
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda25;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda25;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Ljava/util/List;ILandroid/content/Context;I)V

    .line 2568
    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2579
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static showCopyLinkSheet(Landroid/content/Context;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 2307
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    .line 2311
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->copyLinkToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2314
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 2315
    invoke-static/range {p0 .. p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isDarkTheme(Landroid/content/Context;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    const-string v6, "#1C1C1E"

    if-eqz v5, :cond_2

    :try_start_1
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_2
    const-string v7, "#F2F2F7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    :goto_0
    if-eqz v5, :cond_3

    const/4 v9, -0x1

    goto :goto_1

    .line 2318
    :cond_3
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    :goto_1
    if-eqz v5, :cond_4

    .line 2319
    const-string v10, "#AEAEB2"

    :goto_2
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    :cond_4
    const-string v10, "#6C6C70"

    goto :goto_2

    .line 2320
    :goto_3
    const-string v11, "#0A84FF"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    if-eqz v5, :cond_5

    .line 2321
    const-string v12, "#3A3A3C"

    :goto_4
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    goto :goto_5

    :cond_5
    const-string v12, "#E5E5EA"

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_6

    const/4 v6, -0x1

    goto :goto_6

    .line 2322
    :cond_6
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_6
    if-eqz v5, :cond_7

    .line 2323
    const-string v5, "#48484A"

    :goto_7
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_8

    :cond_7
    const-string v5, "#C7C7CC"

    goto :goto_7

    .line 2325
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 2327
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2328
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v15, 0x41a00000    # 20.0f

    .line 2329
    invoke-static {v7, v15, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->roundRect(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    mul-float/2addr v15, v3

    float-to-int v7, v15

    const/high16 v15, 0x41400000    # 12.0f

    mul-float/2addr v15, v3

    float-to-int v15, v15

    const/high16 v16, 0x41e00000    # 28.0f

    mul-float v8, v3, v16

    float-to-int v8, v8

    .line 2331
    invoke-virtual {v14, v7, v15, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2333
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2334
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v16, 0x42200000    # 40.0f

    mul-float v2, v3, v16

    float-to-int v2, v2

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v4, v3, v16

    float-to-int v4, v4

    invoke-direct {v8, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 2335
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2336
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2337
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2338
    invoke-static {v5, v2, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->roundRect(IFLandroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2339
    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2341
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2342
    sget v4, Lps/reso/instaeclipse/R$string;->ig_copy_link_title:I

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v7}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2343
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v5, 0x2

    .line 2344
    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2345
    invoke-virtual {v2, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2346
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2348
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2349
    sget v4, Lps/reso/instaeclipse/R$string;->ig_dl_carousel_subtitle:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2350
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 2351
    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2352
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 2354
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2355
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2356
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2358
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 2359
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2362
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2363
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v13, :cond_8

    .line 2366
    sget v8, Lps/reso/instaeclipse/R$string;->ig_copy_link_slide:I

    add-int/lit8 v9, v4, 0x1

    .line 2367
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v8, v5}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2366
    invoke-static {v0, v5, v12, v6, v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;

    move-result-object v5

    .line 2368
    new-instance v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda8;

    invoke-direct {v8, v2, v0, v1, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda8;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2369
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v4, v9

    const/4 v5, -0x2

    goto :goto_9

    .line 2371
    :cond_8
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2372
    invoke-virtual {v4, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2373
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2375
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2376
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2378
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda9;

    invoke-direct {v6, v3, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda9;-><init>(FLandroid/widget/ScrollView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2385
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2387
    sget v4, Lps/reso/instaeclipse/R$string;->ig_copy_link_all:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v0, v4, v11, v5, v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;

    move-result-object v3

    .line 2389
    new-instance v4, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2, v1, v0, v13}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda10;-><init>(Landroid/app/Dialog;Ljava/util/List;Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2406
    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2408
    invoke-virtual {v2, v14}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2409
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2411
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x50

    .line 2412
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x2

    const/4 v3, -0x1

    .line 2413
    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 2414
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2416
    iput v15, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2417
    iput v15, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2418
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2420
    :cond_9
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 2423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Post) \u274c showCopyLinkSheet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_a
    return-void

    .line 2308
    :cond_a
    :goto_b
    sget v1, Lps/reso/instaeclipse/R$string;->ig_copy_link_none:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static showPostDownloadDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 2079
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2080
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_post_url_not_found:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2083
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 2084
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2085
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v4

    .line 2086
    const-string v0, "post"

    invoke-static {p2, v0, p3, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_1

    .line 2087
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_video:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v7}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_photo:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v7}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2088
    sget-object v7, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda32;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda32;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 2106
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ltz p4, :cond_3

    if-ge p4, v4, :cond_3

    move v7, p4

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v7

    .line 2108
    invoke-static/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showCarouselBottomSheet(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private static snapshotUrlsSince(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->urlBuffer:Ljava/util/Deque;

    monitor-enter v1

    .line 1021
    :try_start_0
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;

    .line 1022
    iget-wide v4, v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->time:J

    cmp-long v4, v4, p0

    if-ltz v4, :cond_0

    iget-object v3, v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->url:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1025
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static snapshotVideoUrlsSince(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlBuffer:Ljava/util/Deque;

    monitor-enter v1

    .line 1032
    :try_start_0
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;

    .line 1033
    iget-wide v4, v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->time:J

    cmp-long v4, v4, p0

    if-ltz v4, :cond_0

    iget-object v3, v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->url:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1036
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startDirectDownload(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9

    .line 2612
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadUsername:Ljava/lang/String;

    const-string v1, "post"

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->currentDownloadMediaId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|DL) startDirectDownload file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2614
    sget v1, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_video:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_photo:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2615
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda7;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$$ExternalSyntheticLambda7;-><init>(Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static tryGetUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 868
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUrl"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 869
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 870
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method private static urlsFromSaveBtnListener(Landroid/view/View;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "(IE|DL) stepA1 videoUrl="

    .line 406
    :try_start_0
    invoke-static/range {p0 .. p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->getOnClickListener(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 410
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 411
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    .line 412
    invoke-static {v1, v2, v4, v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    .line 414
    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-eqz v3, :cond_1b

    const/4 v5, 0x4

    .line 415
    invoke-static {v1, v3, v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findFieldOfType(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 423
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 424
    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 423
    invoke-static {v1, v3, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findVideoUrlInObject(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v3

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v0, 0x50

    const-string v6, "null"

    if-eqz v3, :cond_1

    .line 426
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-static {v5}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    if-nez v3, :cond_a

    .line 428
    sget-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    if-nez v5, :cond_2

    sget-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v5, :cond_a

    :cond_2
    sget-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    .line 430
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 433
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 434
    sget-object v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v8, :cond_8

    sget-object v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_8

    .line 436
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catchall_0
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 438
    :try_start_2
    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 439
    instance-of v9, v8, Ljava/util/List;

    if-eqz v9, :cond_3

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 440
    :cond_4
    sget-object v9, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 441
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :catchall_1
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 442
    sget-object v10, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v10, :cond_7

    goto :goto_2

    .line 444
    :cond_7
    :try_start_3
    sget-object v10, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 445
    invoke-static {v9}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 446
    invoke-static {v9}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v9

    .line 455
    :cond_8
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(IE|DL) stepA2 videoUrl="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_9

    .line 456
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v6

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_a
    if-eqz v3, :cond_b

    .line 458
    invoke-static {v3}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 463
    :cond_b
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    const/4 v3, 0x0

    if-nez v0, :cond_c

    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v0, :cond_17

    :cond_c
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    .line 464
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 465
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findMediaDictionary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(IE|DL) dictIntf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v5, :cond_d

    .line 467
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 466
    invoke-static {v6}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    if-eqz v5, :cond_17

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_2
    :cond_e
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 472
    :try_start_5
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 473
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_e

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_f

    goto :goto_4

    .line 475
    :cond_f
    sget-object v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    sget-object v8, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    .line 476
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_4

    .line 478
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(IE|Car) candidate="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " items="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 479
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-static {v6}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 480
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v4

    .line 482
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_16

    .line 483
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_11

    goto/16 :goto_6

    .line 487
    :cond_11
    new-instance v11, Ljava/util/IdentityHashMap;

    invoke-direct {v11}, Ljava/util/IdentityHashMap;-><init>()V

    .line 488
    invoke-static {v11}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v11

    .line 487
    invoke-static {v10, v11, v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->findVideoUrlInObject(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 489
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 493
    :cond_12
    sget-object v11, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->methodImageUrl:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v12, "(IE|Car) item["

    if-eqz v11, :cond_13

    .line 495
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    filled-new-array {v13, v10}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 496
    instance-of v13, v11, Ljava/lang/String;

    if-eqz v13, :cond_13

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 497
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] mediaExtKt="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x3c

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual {v11, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 498
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    .line 505
    :catchall_3
    :cond_13
    :try_start_7
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->probeCdnUrlViaStringMethods(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 506
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] probed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    if-eqz v11, :cond_14

    .line 507
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 510
    :cond_14
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 511
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    .line 512
    invoke-static {v12}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v12

    .line 511
    invoke-static {v10, v11, v4, v12}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->scanForCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    .line 513
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-static {v11}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->pickBestImageUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 516
    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(IE|Car) carouselUrls="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 517
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-lt v7, v9, :cond_e

    return-object v6

    .line 524
    :cond_17
    :try_start_8
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->methodImageUrl:Ljava/lang/reflect/Method;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v0, :cond_18

    .line 526
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_18

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 528
    invoke-static {v0}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    return-object v0

    .line 534
    :catchall_4
    :cond_18
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 536
    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->pickBestImageUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/core/Contributor$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    return-object v0

    :cond_1b
    return-object v2

    .line 541
    :catchall_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static videoUrlFromStringFields(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 845
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 846
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_4

    .line 847
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 848
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_2

    .line 849
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    .line 851
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 852
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 853
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    return-object v5

    :catchall_0
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 856
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static videoUrlFromVersionObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 810
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 811
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 814
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 815
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 820
    :catchall_0
    :cond_1
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->tryGetUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 821
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isCdnMediaUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 822
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    return-object v1

    .line 829
    :cond_2
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlFromStringFields(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 831
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static wasCapturedAsVideo(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1052
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoUrlBuffer:Ljava/util/Deque;

    monitor-enter v1

    .line 1053
    :try_start_0
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;

    .line 1054
    iget-object v3, v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook$UrlEntry;->url:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 1056
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public install(Ljava/lang/ClassLoader;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    :try_start_0
    const-string v2, "com.instagram.feed.media.Media"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    .line 143
    const-string v2, "com.instagram.feed.media.MediaExtKt"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaExtKtClass:Ljava/lang/Class;

    .line 145
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 146
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 147
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const-string v7, "android.content.Context"

    aget-object v8, v6, v1

    .line 148
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v6, v6, v0

    sget-object v7, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaClass:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    .line 150
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    .line 151
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    sput-object v5, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->methodImageUrl:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :catchall_0
    :cond_1
    :goto_1
    :try_start_1
    sget-boolean v2, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    if-eqz v2, :cond_2

    .line 162
    const-string v2, "com.instagram.api.schemas.VideoVersionIntf"

    goto :goto_2

    .line 163
    :cond_2
    const-string v2, "com.instagram.model.mediasize.VideoVersionIntf"

    .line 160
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    .line 164
    const-string v3, "getUrl"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :catchall_1
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/MediaModelResolver;->resolve(Ljava/lang/ClassLoader;)Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    move-result-object p1

    sput-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    .line 171
    iget-object p1, p1, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->mutableDictClass:Ljava/lang/Class;

    sput-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    .line 172
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    iget-object p1, p1, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->liveTreeDictClass:Ljava/lang/Class;

    sput-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    .line 173
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->carouselCandidates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 174
    sget-object v2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mediaModel:Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;

    iget-object v2, v2, Lps/reso/instaeclipse/mods/media/MediaModelResolver$Result;->listCandidates:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(IE|DL) media model: mutable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mutableMediaDictIntfClass:Ljava/lang/Class;

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " liveTree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->liveTreeMediaDictClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listCandidates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->installUriCaptureHook()V

    return-void
.end method
