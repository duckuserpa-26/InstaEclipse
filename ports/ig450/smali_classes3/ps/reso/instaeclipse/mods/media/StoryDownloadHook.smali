.class public Lps/reso/instaeclipse/mods/media/StoryDownloadHook;
.super Ljava/lang/Object;
.source "StoryDownloadHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;,
        Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;,
        Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;
    }
.end annotation


# static fields
.field private static expiringGetter:Ljava/lang/reflect/Method;

.field private static final mainHandler:Landroid/os/Handler;

.field private static videoVersionGetUrl:Ljava/lang/reflect/Method;

.field private static videoVersionIntfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5WPD4W61RsJXzV5Egx1ngkaADgI(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;Landroid/app/Dialog;Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->lambda$showStoryFormatDialog$2(Landroid/app/Dialog;Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureFromReelItem(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->captureFromReelItem(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStoryMedia(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->handleStoryMedia(Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdownloadLabel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->downloadLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smextractMediaIdFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->extractMediaIdFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smextractStoryMediaOptions(Landroid/content/Context;Ljava/lang/Object;)Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->extractStoryMediaOptions(Landroid/content/Context;Ljava/lang/Object;)Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smextractUsernameFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->extractUsernameFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfindContextAcrossParam(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/Object;)Landroid/content/Context;
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findContextAcrossParam(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfindReelItemHolder(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findReelItemHolder(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private captureFromReelItem(Ljava/lang/Object;)V
    .locals 11

    .line 147
    :try_start_0
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findMediaObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 152
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getId"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_8

    .line 155
    :try_start_2
    invoke-static {v5}, Lps/reso/instaeclipse/utils/media/StoryCache;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 156
    :cond_2
    invoke-static {v1, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractAllUrlsFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 157
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 158
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 159
    invoke-static {v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v8

    .line 162
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->extractUsernameFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractUsernameFromMediaObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v6, p1

    .line 165
    sget-object p1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->expiringGetter:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_7

    .line 167
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v9, 0x174876e800L

    cmp-long v0, v3, v9

    if-gez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    move-wide v1, v0

    :catchall_1
    :cond_7
    move-wide v9, v1

    .line 172
    :try_start_4
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda4;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :cond_8
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|StoryCache) captureFromReelItem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static collectImageCandidates(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v0, :cond_1c

    const/4 v4, 0x7

    if-gt v3, v4, :cond_1c

    .line 606
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x28

    if-lt v4, v5, :cond_0

    goto/16 :goto_c

    .line 607
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 609
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 610
    const-string v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "java.lang."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "kotlin."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_c

    .line 614
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    const/16 v12, 0x4e20

    const/16 v13, 0x32

    const/4 v15, 0x1

    if-eqz v6, :cond_8

    .line 617
    const-class v14, Ljava/lang/Object;

    if-eq v6, v14, :cond_8

    .line 618
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    array-length v8, v14

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v14, v9

    .line 619
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 620
    :cond_3
    invoke-virtual {v10, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 622
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    const-class v15, Ljava/lang/String;

    if-ne v11, v15, :cond_4

    .line 623
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 624
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isCdnUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object v7, v10

    goto :goto_2

    .line 625
    :cond_4
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v15, :cond_5

    .line 626
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    if-lt v10, v13, :cond_6

    if-gt v10, v12, :cond_6

    .line 627
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 628
    :cond_5
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v15, :cond_6

    .line 629
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    const-wide/16 v15, 0x32

    cmp-long v21, v10, v15

    if-ltz v21, :cond_6

    const-wide/16 v15, 0x4e20

    cmp-long v21, v10, v15

    if-gtz v21, :cond_6

    long-to-int v10, v10

    .line 630
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto :goto_1

    .line 634
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto/16 :goto_0

    .line 638
    :cond_8
    const-string v6, "X."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "com.facebook."

    const-string v10, "com.instagram."

    if-nez v8, :cond_9

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 639
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_14

    .line 640
    const-class v8, Ljava/lang/Object;

    if-eq v4, v8, :cond_14

    .line 641
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v11, v8

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v11, :cond_13

    aget-object v15, v8, v14

    .line 642
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v21

    if-eqz v21, :cond_b

    :catchall_1
    move-object/from16 v22, v7

    :catchall_2
    :cond_a
    :goto_5
    move v12, v14

    const-wide/16 v17, 0x4e20

    const-wide/16 v19, 0x32

    goto/16 :goto_6

    :cond_b
    const/4 v12, 0x1

    .line 644
    :try_start_1
    invoke-virtual {v15, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 645
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 646
    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_d

    const/4 v13, 0x0

    .line 647
    new-array v12, v13, [Ljava/lang/Object;

    invoke-virtual {v15, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 648
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_c

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isCdnUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {v12}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    if-nez v7, :cond_c

    move-object v7, v12

    :cond_c
    move v12, v14

    const-wide/16 v17, 0x4e20

    const-wide/16 v19, 0x32

    goto/16 :goto_7

    .line 650
    :cond_d
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v12, v13, :cond_10

    const/4 v13, 0x0

    .line 651
    :try_start_2
    new-array v12, v13, [Ljava/lang/Object;

    invoke-virtual {v15, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 652
    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_f

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v15, 0x32

    if-lt v13, v15, :cond_e

    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v22, v7

    const/16 v7, 0x4e20

    if-gt v13, v7, :cond_a

    :try_start_4
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v22, v7

    const/16 v7, 0x4e20

    goto :goto_5

    :cond_f
    move-object/from16 v22, v7

    const/16 v7, 0x4e20

    const/16 v15, 0x32

    goto :goto_5

    :catchall_3
    move-object/from16 v22, v7

    const/16 v15, 0x32

    goto :goto_5

    :cond_10
    move-object/from16 v22, v7

    const/16 v13, 0x32

    .line 653
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v7, :cond_a

    const/4 v7, 0x0

    .line 654
    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v15, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 655
    instance-of v12, v7, Ljava/lang/Long;

    if-eqz v12, :cond_a

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v19, 0x32

    cmp-long v12, v23, v19

    if-ltz v12, :cond_12

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const-wide/16 v17, 0x4e20

    cmp-long v12, v23, v17

    if-gtz v12, :cond_11

    move v12, v14

    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :cond_11
    move v12, v14

    goto :goto_6

    :catchall_4
    :cond_12
    move v12, v14

    const-wide/16 v17, 0x4e20

    :catchall_5
    :goto_6
    move-object/from16 v7, v22

    :goto_7
    add-int/lit8 v14, v12, 0x1

    const/16 v12, 0x4e20

    const/16 v13, 0x32

    goto/16 :goto_4

    :cond_13
    move-object/from16 v22, v7

    const-wide/16 v17, 0x4e20

    const-wide/16 v19, 0x32

    .line 659
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const/16 v12, 0x4e20

    const/16 v13, 0x32

    goto/16 :goto_3

    :cond_14
    if-eqz v7, :cond_15

    .line 663
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x2

    if-lt v4, v8, :cond_15

    .line 664
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 665
    new-instance v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v0, v7, v2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_15
    const/4 v13, 0x0

    .line 670
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_8
    if-eqz v4, :cond_1c

    .line 671
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_1c

    .line 672
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v7, v5

    move v8, v13

    :goto_9
    if-ge v8, v7, :cond_1b

    aget-object v11, v5, v8

    .line 674
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v12, :cond_16

    :catchall_6
    const/4 v12, 0x1

    goto :goto_b

    :cond_16
    const/4 v12, 0x1

    .line 675
    :try_start_8
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 676
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_17

    goto :goto_b

    .line 678
    :cond_17
    instance-of v14, v11, Ljava/util/List;

    if-eqz v14, :cond_18

    check-cast v11, Ljava/util/List;

    .line 679
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v3, 0x1

    .line 680
    invoke-static {v14, v1, v2, v15}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->collectImageCandidates(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_a

    .line 681
    :cond_18
    instance-of v14, v11, Ljava/lang/String;

    if-nez v14, :cond_1a

    .line 682
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    .line 683
    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_19

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_19

    .line 684
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    :cond_19
    add-int/lit8 v14, v3, 0x1

    .line 685
    invoke-static {v11, v1, v2, v14}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->collectImageCandidates(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    :cond_1a
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_1b
    const/4 v12, 0x1

    .line 690
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_8

    :cond_1c
    :goto_c
    return-void
.end method

.method private static downloadLabel()Ljava/lang/String;
    .locals 3

    .line 316
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 315
    const-string v2, "ig_dl_title"

    invoke-static {v0, v2, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->tByName(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadMenu;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1047
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1048
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Linux; Android 12) AppleWebKit/537.36"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1050
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v1, 0x8000

    .line 1051
    :try_start_1
    new-array v1, v1, [B

    .line 1052
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

    .line 1053
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

    .line 1050
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

    .line 1053
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method private static extractMediaIdFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 862
    const-string v0, "com.instagram.model.reels.ReelItem"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 864
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->readFieldByTypeName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_2

    return-object v1

    .line 869
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 870
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_3
    return-object v1
.end method

.method private static extractStoryMediaOptions(Landroid/content/Context;Ljava/lang/Object;)Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;
    .locals 8

    const-string v0, "(IE|Story) bestCandidate area="

    const-string v1, "(IE|Story) imageCandidates="

    const-string v2, "(IE|Story) reelItem="

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    .line 379
    :cond_0
    :try_start_0
    const-string v4, "com.instagram.model.reels.ReelItem"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->readFieldByTypeName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 381
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    move-object p1, v4

    .line 384
    :cond_2
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findMediaObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object v4, p1

    .line 386
    :goto_1
    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isMediaVideo(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    if-eq v4, p1, :cond_4

    .line 387
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isMediaVideo(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 391
    :goto_3
    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    if-eq v4, p1, :cond_6

    .line 393
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    if-nez v7, :cond_7

    .line 397
    sget-object v4, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v4, :cond_7

    sget-object v4, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_7

    .line 398
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 399
    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    .line 398
    invoke-static {p1, v4, v6}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findVideoUrl(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 401
    invoke-static {v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 408
    invoke-static {p0, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->imageUrlFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_8
    move-object p0, v3

    :goto_4
    if-eqz p0, :cond_9

    .line 409
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object p0, v3

    :cond_9
    if-nez p0, :cond_a

    .line 419
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 421
    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    .line 420
    invoke-static {p1, v2, v4, v6}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->collectImageCandidates(Ljava/lang/Object;Ljava/util/List;Ljava/util/Set;I)V

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 423
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 424
    new-instance p0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 425
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;

    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;->url:Ljava/lang/String;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;

    iget v0, v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;->area:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 432
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v6, v1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->scanCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    .line 434
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v7, :cond_b

    .line 439
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_5

    .line 442
    :cond_c
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    if-nez p0, :cond_e

    .line 445
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->pickBestUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :cond_e
    if-nez p0, :cond_f

    if-nez v7, :cond_f

    return-object v3

    .line 448
    :cond_f
    new-instance p1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;

    invoke-direct {p1, p0, v7, v5}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Story) extractStoryMediaOptions error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object v3
.end method

.method private static extractUsernameFromReelItemHolder(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 775
    const-string p0, "(IE|Story|Username) holder is null"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object v0

    .line 778
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Story|Username) searching in holder="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 782
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v2, v0

    .line 783
    :goto_0
    const-string v3, "com.instagram.model.reels.ReelItem"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    :try_start_1
    const-class v6, Ljava/lang/Object;

    if-eq v1, v6, :cond_4

    .line 784
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 785
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 787
    :try_start_2
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 788
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 789
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v11, :cond_1

    .line 791
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(IE|Story|Username) found ReelItem in field="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 792
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " on "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-static {v2}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v10

    goto :goto_2

    :catchall_0
    move-object v2, v10

    :catchall_1
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    .line 798
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 800
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 803
    const-string v1, "(IE|Story|Username) holder is itself a ReelItem"

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object p0, v2

    :goto_4
    if-nez p0, :cond_6

    .line 806
    const-string p0, "(IE|Story|Username) \u274c ReelItem not found in holder"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object v0

    .line 813
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_5
    if-ge v3, v2, :cond_c

    aget-object v6, v1, v3

    .line 814
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_6

    .line 815
    :cond_7
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 816
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_b

    const-class v8, Ljava/lang/String;

    if-eq v7, v8, :cond_b

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v7, v8, :cond_8

    goto/16 :goto_6

    .line 818
    :cond_8
    :try_start_5
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 819
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_6

    .line 822
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 825
    const-string v9, "com.instagram.user.model.User"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v10, "(IE|Story|Username) reelItem."

    if-eqz v9, :cond_a

    .line 826
    :try_start_6
    invoke-static {v7}, Lps/reso/instaeclipse/utils/users/UserUtils;->callUsernameGetter(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 828
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "() [User] \u2192 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-object v7

    .line 835
    :cond_a
    const-string v9, "com.instagram.feed.media.Media"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 836
    invoke-static {v7}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractUsernameFromMediaObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 838
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "() [Media] \u2192 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v7

    :catchall_2
    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 847
    :cond_c
    :try_start_7
    const-string p0, "(IE|Story|Username) \u274c username not found on ReelItem methods"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Story|Username) \u274c Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_7
    return-object v0
.end method

.method private static findContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 698
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 699
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 700
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 701
    const-class v6, Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 702
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 704
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 705
    instance-of v6, v5, Landroid/content/Context;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 709
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static findContextAcrossParam(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/Object;)Landroid/content/Context;
    .locals 3

    .line 322
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 325
    iget-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 328
    :cond_1
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v1, p0, v0

    .line 329
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/content/Context;

    return-object v1

    .line 330
    :cond_2
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findMediaObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 459
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.instagram.feed.media.Media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 461
    :cond_1
    invoke-static {p0, v2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->readFieldByTypeName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 464
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    .line 465
    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_7

    .line 466
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    .line 467
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v8

    if-nez v8, :cond_5

    .line 468
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 469
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 470
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_5

    const-class v9, Ljava/lang/String;

    if-eq v8, v9, :cond_5

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    .line 473
    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 474
    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 475
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 476
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_5

    return-object v7

    :catchall_0
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 479
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private static findReelItemHolder(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 4

    .line 344
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->hasReelItemField(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    return-object p0

    .line 346
    :cond_0
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 347
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->hasReelItemField(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findVideoUrl(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;
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

    .line 501
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 502
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    if-eqz v1, :cond_b

    sget-object v2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 504
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 506
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 507
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isCdnUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 514
    :catchall_0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 515
    const-string v3, "X."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "com.facebook."

    const-string v6, "com.instagram."

    if-nez v4, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 518
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_b

    .line 519
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_b

    .line 520
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v7, v4

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_a

    aget-object v9, v4, v8

    .line 522
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x1

    .line 523
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 524
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    goto :goto_2

    .line 526
    :cond_5
    instance-of v11, v9, Ljava/util/List;

    if-eqz v11, :cond_7

    check-cast v9, Ljava/util/List;

    .line 527
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :catchall_1
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 528
    sget-object v11, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_6

    .line 530
    :try_start_2
    sget-object v11, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;

    new-array v12, v2, [Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 531
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isCdnUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 532
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->rememberVideoUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v10

    .line 539
    :cond_7
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 540
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 541
    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    add-int/2addr v10, p2

    .line 542
    invoke-static {v9, p1, v10}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->findVideoUrl(Ljava/lang/Object;Ljava/util/Set;I)Ljava/lang/String;

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

    .line 548
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-object v0
.end method

.method private handleStoryMedia(Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 879
    iget-object v0, p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->imageUrl:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->videoUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-boolean v4, p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->modelSaysVideo:Z

    invoke-static {v0, v3, v4}, Lps/reso/instaeclipse/mods/media/StoryDownloadChoicePolicy;->decide(ZZZ)Lps/reso/instaeclipse/mods/media/StoryDownloadChoicePolicy$Decision;

    move-result-object v0

    .line 881
    sget-object v3, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$4;->$SwitchMap$ps$reso$instaeclipse$mods$media$StoryDownloadChoicePolicy$Decision:[I

    invoke-virtual {v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadChoicePolicy$Decision;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    goto :goto_2

    .line 885
    :cond_2
    sget p2, Lps/reso/instaeclipse/R$string;->ig_toast_story_url_not_found:I

    new-array p3, v2, [Ljava/lang/Object;

    .line 886
    invoke-static {p1, p2, p3}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 885
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 886
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 884
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->showStoryFormatDialog(Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 883
    :cond_4
    iget-object v2, p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->videoUrl:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->startDownload(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 882
    :cond_5
    iget-object v6, p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->imageUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->startDownload(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static hasReelItemField(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 354
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 355
    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_3

    .line 356
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 357
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.instagram.model.reels.ReelItem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_3
    return v0
.end method

.method private installButtonInjectorHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 192
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 193
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[INTERNAL] Pause Playback"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 194
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string p1, "(IE|Story) \u274c Button builder method not found"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    new-instance v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$2;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$2;-><init>(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;)V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(IE|Story) button injector hooked "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " builder(s)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    if-nez v4, :cond_3

    .line 223
    const-string p1, "(IE|Story) \u274c No CharSequence[] return type candidate found"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Story) \u274c Button builder DexKit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private installClickHandlerHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 247
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 248
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const-string v2, "void"

    .line 249
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "[INTERNAL] Pause Playback"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 250
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 247
    invoke-virtual {p1, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    new-instance v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$3;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$3;-><init>(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;)V

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;

    .line 300
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 307
    const-string p1, "(IE|Story) \u274c no click dispatcher hooked"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 310
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "(IE|Story) click handler hooked "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " dispatcher(s)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 311
    const-string p1, "StoryDownload"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    return-void

    .line 256
    :cond_4
    :goto_1
    const-string p1, "(IE|Story) \u274c Click handler not found"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Story) \u274c Click handler DexKit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private installStoryCaptureHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 6

    .line 124
    new-instance v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$1;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$1;-><init>(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;)V

    .line 136
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ReelViewerFragment.onCurrentActiveItemBound"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 137
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/luckypray/dexkit/result/MethodDataList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    invoke-virtual {v1, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    .line 140
    :try_start_2
    sget-boolean p1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->cacheStories:Z

    if-eqz p1, :cond_1

    const-string p1, "CacheStories"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(IE|StoryCache) capture hook: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " method(s)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|StoryCache) \u26a0\ufe0f capture hook: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static isCdnUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 717
    :cond_1
    const-string v1, "cdninstagram.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fbcdn.net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 718
    :cond_2
    const-string v1, "/t51."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "-19/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private static isVideoUrl(Ljava/lang/String;)Z
    .locals 0

    .line 723
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$captureFromReelItem$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 173
    invoke-static/range {p0 .. p5}, Lps/reso/instaeclipse/utils/media/StoryCache;->capture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic lambda$extractStoryMediaOptions$1(Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;)I
    .locals 0

    .line 424
    iget p1, p1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;->area:I

    iget p0, p0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$CandidateInfo;->area:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$showStoryFormatDialog$2(Landroid/app/Dialog;Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    .line 970
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 971
    iget-object v2, p3, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;->url:Ljava/lang/String;

    iget-boolean v3, p3, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;->video:Z

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->startDownload(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showStoryFormatDialog$3(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 978
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$startDownload$4(Landroid/content/Context;)V
    .locals 3

    .line 1036
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_story_saved:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1037
    invoke-static {p0, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1037
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$startDownload$5(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 1040
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_download_failed:I

    .line 1041
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1040
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1041
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$startDownload$6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1034
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1036
    sget-object p1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1040
    sget-object p2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$startDownload$7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 1032
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static looksLikeUsername(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 855
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const-string v0, "[a-zA-Z0-9._]+"

    .line 856
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\\d+"

    .line 857
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;
    .locals 1

    .line 1011
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1012
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 p3, 0x41700000    # 15.0f

    .line 1014
    invoke-virtual {v0, p1, p3}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 1015
    invoke-virtual {v0, p1, p3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 1016
    invoke-static {p2, p1, p0, p4}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->roundRect(IFLandroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 1017
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 p0, 0x41a00000    # 20.0f

    mul-float/2addr p0, p4

    float-to-int p0, p0

    mul-float/2addr p1, p4

    float-to-int p1, p1

    .line 1018
    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1019
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x1

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    .line 1021
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1022
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static parseUrlArea(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 746
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 748
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 750
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 752
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 754
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    .line 756
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 758
    :cond_4
    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 759
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v0, v2

    if-le v0, v1, :cond_5

    move v1, v0

    :catch_0
    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    :goto_3
    move v0, v3

    goto :goto_0

    :cond_7
    :goto_4
    move v0, v2

    goto :goto_0

    :cond_8
    return v1
.end method

.method private static pickBestUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 732
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 735
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 736
    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->parseUrlArea(Ljava/lang/String;)I

    move-result v5

    if-le v5, v3, :cond_2

    move-object v2, v4

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_1

    .line 739
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :goto_1
    return-object v2
.end method

.method private static readFieldByTypeName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 487
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 488
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 489
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 490
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 491
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private resolveExpiringGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 101
    :try_start_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "StoryCache_expiring"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 102
    :try_start_1
    invoke-static {v1, p2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->expiringGetter:Ljava/lang/reflect/Method;

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const-string v4, "com.instagram.feed.media.Media"

    .line 106
    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramCount(I)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    const-string v5, "java.lang.Long"

    .line 107
    invoke-virtual {v3, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "expiring_at"

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v3

    .line 105
    invoke-virtual {v0, v3}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/luckypray/dexkit/result/MethodDataList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :try_start_2
    invoke-virtual {v0, p2}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sput-object v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->expiringGetter:Ljava/lang/reflect/Method;

    .line 111
    invoke-static {v1, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "(IE|StoryCache) expiring getter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static roundRect(IFLandroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 1003
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1004
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float/2addr p1, p3

    .line 1005
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object p2
.end method

.method private static scanCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V
    .locals 7
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

    if-eqz p0, :cond_a

    const/4 v0, 0x5

    if-gt p2, v0, :cond_a

    .line 555
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    goto/16 :goto_4

    .line 556
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 557
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 558
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "java.lang."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "kotlin."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 560
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    .line 561
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_a

    .line 562
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 564
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 566
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 568
    :cond_4
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/String;

    .line 569
    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->isCdnUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 570
    :cond_5
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/util/List;

    .line 571
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v5, p1, v6, p3}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->scanCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V

    goto :goto_2

    .line 573
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 574
    const-string v6, "X."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.instagram."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.facebook."

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    add-int/lit8 v5, p2, 0x1

    .line 576
    invoke-static {v4, p1, v5, p3}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->scanCdnUrls(Ljava/lang/Object;Ljava/util/List;ILjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    :goto_4
    return-void
.end method

.method private showStoryFormatDialog(Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 892
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 893
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 896
    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->imageUrl:Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    .line 897
    sget v1, Lps/reso/instaeclipse/R$string;->ig_story_download_photo:I

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    new-instance v1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;

    iget-object v2, v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->imageUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v11}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_0
    iget-object v1, v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->videoUrl:Ljava/lang/String;

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    .line 901
    sget v1, Lps/reso/instaeclipse/R$string;->ig_story_download_video_music:I

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    new-instance v1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;

    iget-object v0, v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMediaOptions;->videoUrl:Ljava/lang/String;

    invoke-direct {v1, v0, v12}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 907
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    move v1, v12

    goto :goto_0

    :cond_2
    move v1, v11

    .line 910
    :goto_0
    const-string v2, "#1C1C1E"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_3
    const-string v3, "#F2F2F7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-eqz v1, :cond_4

    .line 911
    const-string v4, "#2C2C2E"

    goto :goto_2

    :cond_4
    const-string v4, "#FFFFFF"

    :goto_2
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    move v13, v4

    if-eqz v1, :cond_5

    const/4 v15, -0x1

    goto :goto_3

    .line 912
    :cond_5
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move v15, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 913
    const-string v2, "#AEAEB2"

    :goto_4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :cond_6
    const-string v2, "#6C6C70"

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_7

    .line 914
    const-string v1, "#48484A"

    :goto_6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_7
    const-string v1, "#C7C7CC"

    goto :goto_6

    .line 916
    :goto_7
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 917
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 918
    invoke-static {v3, v4, v8, v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->roundRect(IFLandroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    mul-float/2addr v4, v0

    float-to-int v3, v4

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v4, v0, v6

    float-to-int v5, v4

    const/high16 v4, 0x41e00000    # 28.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 920
    invoke-virtual {v7, v3, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 923
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 924
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v16, 0x42200000    # 40.0f

    mul-float v14, v0, v16

    float-to-int v14, v14

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v6, v0, v16

    float-to-int v6, v6

    invoke-direct {v4, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 925
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v0

    float-to-int v14, v6

    .line 926
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 927
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 928
    invoke-static {v1, v4, v8, v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->roundRect(IFLandroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 929
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 932
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 933
    sget v3, Lps/reso/instaeclipse/R$string;->ig_story_download_choice_title:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v8, v3, v6}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v6, 0x2

    .line 935
    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    .line 936
    invoke-virtual {v1, v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 937
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 941
    sget v3, Lps/reso/instaeclipse/R$string;->ig_story_download_choice_subtitle:I

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v8, v3, v12}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 943
    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 944
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 946
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 947
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 948
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 951
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 952
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move v3, v11

    .line 955
    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 956
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;

    .line 957
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 958
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v12, v2, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;->video:Z

    if-eqz v12, :cond_8

    const-string v12, "\ud83c\udfac  "

    goto :goto_9

    :cond_8
    const-string v12, "\ud83d\udcf7  "

    :goto_9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41700000    # 15.0f

    .line 960
    invoke-virtual {v1, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 961
    invoke-virtual {v1, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 963
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 964
    invoke-static {v13, v6, v8, v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->roundRect(IFLandroid/content/Context;F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 965
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v12, -0x2

    invoke-direct {v11, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    .line 967
    iput v6, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 968
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    new-instance v11, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda2;

    move-object v12, v1

    move-object v1, v11

    move-object v6, v2

    move-object/from16 v2, p0

    move/from16 v17, v3

    const/16 v19, 0x0

    move-object v3, v4

    move-object/from16 v20, v9

    move-object v9, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v10

    move v10, v5

    move-object v5, v6

    const/high16 v16, 0x41400000    # 12.0f

    const/16 v18, 0x2

    move-object/from16 v6, p3

    move/from16 v22, v14

    move-object v14, v7

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda2;-><init>(Lps/reso/instaeclipse/mods/media/StoryDownloadHook;Landroid/app/Dialog;Landroid/content/Context;Lps/reso/instaeclipse/mods/media/StoryDownloadHook$StoryMedia;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v17, 0x1

    move-object v4, v9

    move v5, v10

    move-object v7, v14

    move/from16 v6, v18

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v14, v22

    const/4 v11, 0x0

    const/4 v12, -0x2

    goto/16 :goto_8

    :cond_9
    move-object v9, v4

    move v10, v5

    move-object v14, v7

    const/high16 v1, 0x1040000

    .line 977
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v13, v15, v0}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->makePillButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/widget/Button;

    move-result-object v0

    .line 978
    new-instance v1, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda3;

    invoke-direct {v1, v9}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    invoke-virtual {v9, v14}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 982
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 984
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x50

    .line 985
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 986
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 987
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 989
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 990
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 991
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 993
    :cond_a
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|Story) format dialog failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 996
    sget v1, Lps/reso/instaeclipse/R$string;->ig_toast_download_failed:I

    .line 997
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 996
    invoke-static {v8, v1, v0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_a
    return-void
.end method

.method private startDownload(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1028
    const-string v0, "story"

    invoke-static {p4, v0, p5, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Story|DL) username="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " file="

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    .line 1031
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_story_video:I

    new-array v1, p5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_story_photo:I

    new-array v1, p5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/Toast;->show()V

    .line 1032
    sget-object p5, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public install(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 84
    :try_start_0
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "com.instagram.api.schemas.VideoVersionIntf"

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "com.instagram.model.mediasize.VideoVersionIntf"

    .line 83
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionIntfClass:Ljava/lang/Class;

    .line 87
    const-string v1, "getUrl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->videoVersionGetUrl:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->installButtonInjectorHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 91
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->installClickHandlerHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 92
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->resolveExpiringGetter(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/StoryDownloadHook;->installStoryCaptureHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    return-void
.end method
