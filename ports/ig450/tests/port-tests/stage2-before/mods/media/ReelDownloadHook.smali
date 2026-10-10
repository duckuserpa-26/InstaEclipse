.class public Lps/reso/instaeclipse/mods/media/ReelDownloadHook;
.super Ljava/lang/Object;
.source "ReelDownloadHook.java"


# static fields
.field private static activityField:Ljava/lang/reflect/Field;

.field private static buttonAdderMethod:Ljava/lang/reflect/Method;

.field private static cachedInnerField:Ljava/lang/reflect/Field;

.field private static cachedOuterField:Ljava/lang/reflect/Field;

.field private static controllerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static hookMethod:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic -$$Nest$smonOptionsBuilt(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->onOptionsBuilt(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adapterCount(Ljava/lang/Object;)I
    .locals 1

    .line 478
    const-string v0, "getItemCount"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 480
    :cond_0
    const-string v0, "getCount"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 481
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static addVisibleCandidate(Landroid/view/View;IIIILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIII",
            "Ljava/util/List<",
            "Lps/reso/instaeclipse/mods/media/CarouselIndexPolicy$Candidate;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-ge p1, p2, :cond_2

    .line 549
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 551
    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-long v2, p0

    mul-long v6, v0, v2

    .line 554
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-long v0, p0

    int-to-long v2, p3

    sub-long/2addr v0, v2

    .line 555
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-long p2, p0

    int-to-long v2, p4

    sub-long/2addr p2, v2

    .line 556
    new-instance p0, Lps/reso/instaeclipse/mods/media/CarouselIndexPolicy$Candidate;

    mul-long/2addr v0, v0

    mul-long/2addr p2, p2

    add-long v8, v0, p2

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v9}, Lps/reso/instaeclipse/mods/media/CarouselIndexPolicy$Candidate;-><init>(IJJ)V

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static collectCarouselMatches(Landroid/view/View;IIILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "III",
            "Ljava/util/List<",
            "Lps/reso/instaeclipse/mods/media/CarouselIndexPolicy$Candidate;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move v7, p1

    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 494
    const-string v0, "ViewPager"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    const-string v10, "getAdapter"

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    .line 496
    :try_start_0
    invoke-static {p0, v10}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->adapterCount(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    .line 498
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "getCurrentDataIndex"

    aput-object v3, v2, v11

    const-string v3, "getCurrentWrappedDataIndex"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    move-object v4, v9

    move v3, v11

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    .line 500
    invoke-static {p0, v4}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    if-ne v0, v7, :cond_2

    .line 504
    const-string v0, "getCurrentItem"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    .line 507
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->addVisibleCandidate(Landroid/view/View;IIIILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :catchall_0
    :cond_3
    const-string v0, "RecyclerView"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 515
    :try_start_1
    invoke-static {p0, v10}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 516
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->adapterCount(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 517
    const-string v0, "getLayoutManager"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 519
    const-string v1, "getOrientation"

    invoke-static {v0, v1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 520
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, v0

    :goto_2
    if-eqz v9, :cond_7

    .line 522
    const-string v0, "findFirstCompletelyVisibleItemPosition"

    invoke-static {v9, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 524
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_6

    .line 525
    :cond_5
    const-string v0, "findFirstVisibleItemPosition"

    invoke-static {v9, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->addVisibleCandidate(Landroid/view/View;IIIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    :catchall_1
    :cond_7
    instance-of v0, v6, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 538
    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    .line 539
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v11, v1, :cond_8

    .line 540
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-static {v1, p1, p2, p3, v4}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->collectCarouselMatches(Landroid/view/View;IIILjava/util/List;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    .line 445
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 447
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 449
    :cond_0
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-nez v2, :cond_1

    return-object v1

    .line 450
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static findCarouselIndexFromView(Landroid/content/Context;I)I
    .locals 4

    .line 427
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 431
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 432
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 434
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 435
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-static {p0, p1, v2, v1, v3}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->collectCarouselMatches(Landroid/view/View;IIILjava/util/List;)V

    .line 438
    invoke-static {v3, p1}, Lps/reso/instaeclipse/mods/media/CarouselIndexPolicy;->choose(Ljava/util/List;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    :goto_0
    return v0
.end method

.method private static findReelCarouselIndex(Ljava/lang/Object;)I
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 351
    :cond_0
    sget-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedOuterField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v4, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedInnerField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_2

    .line 353
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    sget-object v4, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedInnerField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 356
    :catchall_0
    :cond_1
    sput-object v3, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedOuterField:Ljava/lang/reflect/Field;

    .line 357
    sput-object v3, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedInnerField:Ljava/lang/reflect/Field;

    .line 364
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const v4, 0x7fffffff

    move-object v5, v3

    move-object v6, v5

    :goto_0
    if-eqz v2, :cond_10

    .line 365
    const-class v7, Ljava/lang/Object;

    if-eq v2, v7, :cond_10

    .line 366
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_f

    aget-object v10, v7, v9

    .line 367
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_9

    .line 368
    :cond_3
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 369
    const-string v12, "android."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "java."

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 370
    const-string v14, "androidx."

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "kotlin."

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto/16 :goto_9

    :cond_4
    const/4 v11, 0x1

    .line 371
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 373
    :try_start_1
    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_5

    goto/16 :goto_9

    .line 378
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move/from16 v17, v1

    move-object/from16 v1, v16

    const/16 v16, 0x0

    :goto_2
    if-eqz v1, :cond_c

    .line 379
    const-class v11, Ljava/lang/Object;

    if-eq v1, v11, :cond_b

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 381
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 382
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6

    .line 383
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v0, v11

    move-object/from16 v18, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_9

    aget-object v19, v11, v5

    move/from16 v20, v0

    .line 384
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v21, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v17, 0x1

    const/4 v6, 0x1

    if-le v0, v6, :cond_8

    move-object/from16 v16, v19

    goto :goto_5

    :cond_8
    move/from16 v17, v0

    move-object/from16 v16, v19

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v20

    move-object/from16 v6, v21

    goto :goto_3

    :cond_9
    move-object/from16 v21, v6

    const/4 v6, 0x1

    move/from16 v0, v17

    :goto_5
    if-le v0, v6, :cond_a

    move v1, v0

    move-object/from16 v0, v16

    goto :goto_8

    .line 390
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move/from16 v17, v0

    move v11, v6

    move-object/from16 v5, v18

    move-object/from16 v6, v21

    move-object/from16 v0, p0

    goto :goto_2

    :cond_b
    :goto_6
    move-object/from16 v18, v5

    move-object/from16 v21, v6

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v18, v5

    move-object/from16 v21, v6

    move v6, v11

    :goto_7
    move-object/from16 v0, v16

    move/from16 v1, v17

    :goto_8
    if-ne v1, v6, :cond_e

    if-eqz v0, :cond_e

    .line 394
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 396
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ltz v1, :cond_e

    const/16 v3, 0xc8

    if-ge v1, v3, :cond_e

    if-ge v1, v4, :cond_e

    move-object v6, v0

    move v4, v1

    move-object v5, v10

    goto :goto_a

    :catchall_1
    :cond_d
    :goto_9
    move-object/from16 v18, v5

    move-object/from16 v21, v6

    :catchall_2
    :cond_e
    move-object/from16 v5, v18

    move-object/from16 v6, v21

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v18, v5

    move-object/from16 v21, v6

    .line 405
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_10
    if-eqz v5, :cond_11

    .line 409
    sput-object v5, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedOuterField:Ljava/lang/reflect/Field;

    .line 410
    sput-object v6, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->cachedInnerField:Ljava/lang/reflect/Field;

    return v4

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private static hasButtonAdderMethod(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 157
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 158
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const-class v4, Landroid/content/Context;

    aget-object v5, v3, v0

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Landroid/view/View$OnClickListener;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    .line 160
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-class v6, Ljava/lang/String;

    if-ne v4, v6, :cond_1

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static installGateHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "(IE|Reel) \u2705 Gate unlocked: "

    const-string v1, "(IE|Reel) \u26a0\ufe0f Gate method not found for config "

    .line 300
    new-instance v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$6;

    invoke-direct {v2, p2, p7}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$6;-><init>(Ljava/lang/String;Z)V

    .line 308
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-static {p2, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 311
    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v3

    .line 318
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    const/4 p5, 0x1

    aput-object p6, v5, p5

    .line 319
    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramTypes([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object p6

    const-string v4, "boolean"

    .line 320
    invoke-virtual {p6, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object p6

    new-array v4, p5, [Ljava/lang/Number;

    .line 321
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p6, v4}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingNumbers([Ljava/lang/Number;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object p6

    .line 318
    invoke-virtual {v3, p6}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object p6

    .line 317
    invoke-virtual {p0, p6}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/MethodDataList;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_1

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 328
    :cond_1
    invoke-virtual {p0, v6}, Lorg/luckypray/dexkit/result/MethodDataList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/MethodData;

    invoke-virtual {p0, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 329
    invoke-virtual {p0, p5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 330
    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 331
    invoke-static {p2, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 332
    const-string p1, "ReelDownload"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "(IE|Reel) \u274c installGateHook("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static installNativeDownloadGateUnlock(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 9

    .line 260
    sget-boolean v1, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    const-string v1, "X.0Aq7"

    invoke-static {p1, v1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 263
    const-string v2, "A08"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "com.instagram.common.session.UserSession"

    .line 264
    invoke-virtual {p1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "com.instagram.feed.media.Media"

    .line 265
    invoke-virtual {p1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 263
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 266
    new-instance v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$4;

    invoke-direct {v2}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$4;-><init>()V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 271
    const-string v1, "X.000H"

    invoke-static {p1, v1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "A1A"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 272
    new-instance v1, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$5;

    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$5;-><init>()V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 279
    const-string v0, "(IE|Reel) verified IG449 eligibility + restricted gate installed"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 280
    const-string v1, "(IE|Reel) IG449 download gates failed"

    invoke-static {v1, v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v7, "com.instagram.feed.media.Media"

    const/4 v8, 0x1

    const-string v3, "ReelDownloadGate_eligible"

    const-wide v4, 0x81035f00020d71L

    const-string v6, "com.instagram.common.session.UserSession"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->installGateHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 290
    const-string v7, "boolean"

    const/4 v8, 0x0

    const-string v3, "ReelDownloadGate_restricted"

    const-wide v4, 0x81035f00060d73L

    const-string v6, "com.instagram.common.session.UserSession"

    invoke-static/range {v1 .. v8}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->installGateHook(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static installReduceOptionsListPatch(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 9

    .line 183
    :try_start_0
    const-string v0, "com.instagram.feed.media.mediaoption.MediaOption$Option"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 184
    const-string v1, "values"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    move v5, v2

    move-object v4, v3

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v0, v5

    .line 185
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    const-string v8, "DOWNLOAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v6

    goto :goto_1

    .line 187
    :cond_0
    const-string v8, "COPY_LINK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v6

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 190
    const-string p0, "(IE|Reel) \u274c DOWNLOAD/COPY_LINK enum values not found"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_3
    new-instance v0, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$3;

    invoke-direct {v0, v3, v4}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "ReelOptionsListBuilder"

    if-eqz v1, :cond_4

    .line 217
    :try_start_1
    invoke-static {v3, p1}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 219
    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    .line 224
    :cond_4
    const-string v1, "Lcom/instagram/feed/media/mediaoption/MediaOption$Option;"

    .line 225
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v4

    .line 226
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    const-string v6, "java.util.ArrayList"

    .line 227
    invoke-virtual {v5, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->PLAYBACK_CONTROLS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v5, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->addUsingField(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->UNSAVE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v5, v1}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->addUsingField(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 226
    invoke-virtual {v4, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v1}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/MethodDataList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    const-string p0, "(IE|Reel) \u26a0\ufe0f Reduced options-list builder not found"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_5
    invoke-virtual {p0, v2}, Lorg/luckypray/dexkit/result/MethodDataList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/MethodData;

    invoke-virtual {p0, p1}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 238
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 239
    invoke-static {v3, p0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 240
    const-string p1, "ReelDownload"

    invoke-static {p1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(IE|Reel) \u2705 Options-list patch hooked: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 242
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(IE|Reel) \u274c installReduceOptionsListPatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static invokeIntNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 472
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->invokeNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 473
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static invokeNoArg(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 457
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 460
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 462
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0

    .line 458
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$onOptionsBuilt$0(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 606
    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->startReelDownload(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$startReelDownload$1(Landroid/content/Context;)V
    .locals 3

    .line 636
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_reel_saved:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$startReelDownload$2(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    .line 640
    sget v0, Lps/reso/instaeclipse/R$string;->ig_toast_reel_failed:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$startReelDownload$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 633
    :try_start_0
    invoke-static {p0, p1, p2, v0, p3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 635
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 639
    sget-object p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$startReelDownload$4(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 661
    invoke-static {p0, p1, p2, p3, p4}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->showPostDownloadDialog(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static onOptionsBuilt(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 12

    .line 561
    :try_start_0
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 563
    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object p0, p0, v3

    .line 565
    sget-object v4, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->activityField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_1

    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 567
    const-class v8, Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 569
    sput-object v7, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->activityField:Ljava/lang/reflect/Field;

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 574
    :cond_1
    :goto_1
    sget-object v4, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->activityField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_2

    .line 575
    const-string p0, "(IE|Reel) \u274c no Activity field on controller"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 579
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-nez v4, :cond_3

    return-void

    .line 582
    :cond_3
    sget-object v5, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->buttonAdderMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_9

    .line 583
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    .line 584
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 585
    array-length v10, v9

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    goto :goto_3

    .line 586
    :cond_4
    const-class v10, Landroid/content/Context;

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    .line 587
    :cond_5
    const-class v10, Landroid/view/View$OnClickListener;

    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x2

    .line 588
    aget-object v10, v9, v10

    const-class v11, Ljava/lang/String;

    if-eq v10, v11, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x3

    .line 589
    aget-object v9, v9, v10

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_8

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 590
    :cond_8
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 591
    sput-object v8, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->buttonAdderMethod:Ljava/lang/reflect/Method;

    .line 595
    :cond_9
    sget-object v3, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->buttonAdderMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_a

    .line 596
    const-string p0, "(IE|Reel) \u274c buttonAdderMethod not found"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 600
    :cond_a
    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->resolveDownloadIcon(Landroid/content/Context;)I

    move-result v3

    .line 605
    sget-object v5, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->buttonAdderMethod:Ljava/lang/reflect/Method;

    new-instance v6, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda4;

    invoke-direct {v6, v4, v1, v0}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;)V

    sget v0, Lps/reso/instaeclipse/R$string;->ig_dl_title:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 607
    invoke-static {v4, v0, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v6, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 605
    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|Reel) \u274c onOptionsBuilt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static profileClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
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

    .line 679
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static resolveDownloadIcon(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    .line 667
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.instagram.feed.media.mediaoption.MediaOption$Option"

    .line 668
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 669
    const-string v1, "values"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 670
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DOWNLOAD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 671
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "iconDrawable"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 672
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method private static startReelDownload(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 615
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractUsernameFromMediaObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 616
    const-string v1, "reel"

    if-nez v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 618
    :goto_0
    const-string v0, "0"

    const/4 v2, 0x0

    .line 620
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getId"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 621
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    move-object v0, v3

    :catchall_0
    :cond_1
    move-object v6, v0

    .line 624
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 627
    invoke-static {v5, v1, v6, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 630
    sget p2, Lps/reso/instaeclipse/R$string;->ig_toast_downloading_reel:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p2, v1}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 631
    sget-object p2, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1, v5}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 647
    :cond_2
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->extractAllUrlsFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 648
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 649
    sget p1, Lps/reso/instaeclipse/R$string;->ig_toast_reel_url_not_found:I

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 654
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->findCarouselIndexFromView(Landroid/content/Context;I)I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_1

    .line 655
    :cond_4
    invoke-static {p2}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->findReelCarouselIndex(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    move v7, p1

    .line 660
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda3;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public install(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 48
    invoke-static/range {p1 .. p2}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->installNativeDownloadGateUnlock(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 49
    invoke-static/range {p1 .. p2}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->installReduceOptionsListPatch(Lorg/luckypray/dexkit/DexKitBridge;Ljava/lang/ClassLoader;)V

    .line 50
    sget-boolean v2, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    if-eqz v2, :cond_0

    .line 53
    const-string v0, "(IE|Reel) IG449 shared MediaOption menu path selected"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lps/reso/instaeclipse/utils/core/DexKitCache;->isCacheValid()Z

    move-result v2

    const-string v3, "."

    const-string v4, "(IE|Reel) \u2705 hooked: "

    const-string v5, "ReelDownload"

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 58
    invoke-static {v5, v0}, Lps/reso/instaeclipse/utils/core/DexKitCache;->loadMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->controllerClass:Ljava/lang/Class;

    .line 61
    sput-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hookMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    invoke-static {v5}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$1;

    invoke-direct {v0, v1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$1;-><init>(Lps/reso/instaeclipse/mods/media/ReelDownloadHook;)V

    invoke-static {v2, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hookMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hookMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v2

    .line 78
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    const-string v9, "ClipsOrganicMediaItemViewMoreOptionsController"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 79
    invoke-virtual {v7, v8}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v7

    .line 78
    invoke-virtual {v2, v7}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v2

    move-object/from16 v7, p1

    .line 77
    invoke-virtual {v7, v2}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/MethodDataList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    const-string v0, "(IE|Reel) \u274c ClipsOrganicMediaItemViewMoreOptionsController not found"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_2
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 89
    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/MethodDataList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :catchall_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/luckypray/dexkit/result/MethodData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {v9, v0}, Lorg/luckypray/dexkit/result/MethodData;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(IE|Reel) string matches="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/luckypray/dexkit/result/MethodDataList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " candidateClasses="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v7, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 103
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v11, v9

    move v12, v10

    move v13, v12

    :goto_2
    if-ge v12, v11, :cond_a

    aget-object v14, v9, v12

    .line 104
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v15, v6, :cond_4

    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 106
    array-length v15, v6

    const/4 v10, 0x2

    if-ge v15, v10, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 107
    aget-object v15, v6, v10

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v10, "com.instagram.feed.media.Media"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    .line 108
    aget-object v15, v6, v10

    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-nez v15, :cond_9

    aget-object v6, v6, v10

    const-class v10, Ljava/lang/String;

    if-ne v6, v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-nez v7, :cond_8

    move-object v7, v14

    .line 111
    :cond_8
    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hasButtonAdderMethod(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v2, v14

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_a
    :goto_4
    if-lez v13, :cond_b

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(IE|Reel) candidate "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " void(Media,X)="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :cond_b
    if-eqz v2, :cond_c

    .line 117
    sput-object v8, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->controllerClass:Ljava/lang/Class;

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_d
    :goto_5
    if-nez v2, :cond_e

    if-eqz v7, :cond_e

    .line 121
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->controllerClass:Ljava/lang/Class;

    move-object v2, v7

    :cond_e
    if-nez v2, :cond_f

    .line 125
    const-string v0, "(IE|Reel) \u274c hook method (Media, ButtonAdder)V not found"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    sput-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hookMethod:Ljava/lang/reflect/Method;

    .line 131
    invoke-static {v5, v2}, Lps/reso/instaeclipse/utils/core/DexKitCache;->saveMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 132
    invoke-static {v5}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$2;

    invoke-direct {v0, v1}, Lps/reso/instaeclipse/mods/media/ReelDownloadHook$2;-><init>(Lps/reso/instaeclipse/mods/media/ReelDownloadHook;)V

    invoke-static {v2, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hookMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lps/reso/instaeclipse/mods/media/ReelDownloadHook;->hookMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(IE|Reel) \u274c install: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_6
    return-void
.end method
