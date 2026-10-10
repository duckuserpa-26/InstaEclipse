.class public Lps/reso/instaeclipse/mods/media/InstantUploadHook;
.super Ljava/lang/Object;
.source "InstantUploadHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    }
.end annotation


# static fields
.field private static final MAX_EDGE:I = 0x5a0

.field private static final PENDING_TTL_MS:J = 0x493e0L

.field private static final PICK_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final PICK_REQUEST:I = 0x1e5a

.field private static final VIDEO_CLEANUP_MS:J = 0x1b7740L

.field private static final VM_CLASS:Ljava/lang/String; = "com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel"

.field private static chip:Landroid/widget/TextView;

.field private static chipHost:Landroid/app/Activity;

.field private static lifecycleRegistered:Z

.field static volatile pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

.field private static volatile pendingSetAt:J

.field private static preview:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$6U7f01WKmTNkavy3_fBPMduEnu0()V
    .locals 0

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->removeChip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetchip()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetchipHost()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chipHost:Landroid/app/Activity;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smarm(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->arm(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdecode(Landroid/app/Activity;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->decode(Landroid/app/Activity;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfailureToast()V
    .locals 0

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->failureToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sminjectChip(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->injectChip(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisVideo(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->isVideo(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smmarkChipReady(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->markChipReady(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonConsumed(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->onConsumed(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpeekFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    .locals 1

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->peekFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smprepareVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->prepareVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smremoveChip()V
    .locals 0

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->removeChip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtakeFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    .locals 1

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->takeFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->PICK_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->lifecycleRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized arm(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V
    .locals 4

    const-class v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;

    monitor-enter v0

    .line 246
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    .line 247
    sput-object p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingSetAt:J

    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    const/4 p0, 0x1

    .line 249
    invoke-static {v1, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dispose(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static bitmapSlots([Ljava/lang/Class;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[I"
        }
    .end annotation

    .line 224
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    const-class v5, Landroid/graphics/Bitmap;

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    new-array v0, v3, [I

    move v2, v1

    .line 227
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    aget-object v3, p0, v1

    const-class v4, Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    aput v1, v0, v2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method static currentActivity()Landroid/app/Activity;
    .locals 7

    const/4 v0, 0x0

    .line 657
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 658
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 659
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 660
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    return-object v0

    .line 663
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 664
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 665
    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 666
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 667
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 668
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_2
    return-object v0
.end method

.method private static decode(Landroid/app/Activity;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 601
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 602
    new-instance p1, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 618
    const-string p1, "(IE|InstantUpload30) image decode failed"

    invoke-static {p1, p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static displayName(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 568
    const-string v0, "_display_name"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    new-array v3, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object v0, v3, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_2

    .line 570
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 571
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 573
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_0

    .line 577
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 568
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 577
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 578
    :catchall_2
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static dispose(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->file:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 264
    :try_start_0
    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :catchall_0
    :cond_1
    :try_start_1
    iget-boolean p1, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->video:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 268
    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method

.method private static downscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 634
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x5a0

    if-gt v0, v1, :cond_1

    return-object p0

    :cond_1
    const/high16 v1, 0x44b40000    # 1440.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 638
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    .line 637
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static downscaleAndRecycle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 642
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->downscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eq v0, p0, :cond_0

    .line 644
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private static dp(Landroid/app/Activity;I)I
    .locals 0

    int-to-float p1, p1

    .line 650
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static failureToast()V
    .locals 3

    .line 273
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private hookCameraOpen(Ljava/lang/ClassLoader;)V
    .locals 7

    .line 281
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->registerLifecycle(Ljava/lang/ClassLoader;)V

    .line 283
    :try_start_0
    const-string v0, "com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel"

    invoke-static {v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 287
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$4;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$4;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook;)V

    .line 295
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    .line 296
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    goto :goto_1

    .line 300
    :cond_3
    :try_start_1
    invoke-static {v4, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    :catchall_0
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(IE|InstantUpload30) camera-open hooked ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " VM methods)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IE|InstantUpload30) camera-open failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private hookPickerResult()V
    .locals 6

    .line 445
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "onActivityResult"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantUploadHook$6;

    invoke-direct {v5, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$6;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook;)V

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 477
    const-string v0, "(IE|InstantUpload30) picker-result hooked"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IE|InstantUpload30) picker-result hook failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hookSwap(Ljava/lang/ClassLoader;)V
    .locals 17

    move-object/from16 v1, p0

    .line 98
    :try_start_0
    const-string v0, "com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel"

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_8

    aget-object v11, v2, v9

    .line 104
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 105
    :cond_0
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 107
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    aget-object v10, v12, v14

    const-class v5, Landroid/graphics/Bitmap;

    if-ne v10, v5, :cond_1

    add-int/lit8 v15, v15, 0x1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 111
    :cond_2
    array-length v5, v12

    const/16 v10, 0xa

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v5, v10, :cond_4

    const/4 v5, 0x0

    aget-object v10, v12, v5

    const-class v5, Landroid/content/Context;

    if-ne v10, v5, :cond_4

    const/4 v5, 0x1

    aget-object v10, v12, v5

    const-class v5, Landroid/graphics/Bitmap;

    if-ne v10, v5, :cond_4

    aget-object v5, v12, v14

    if-ne v5, v0, :cond_4

    const/16 v5, 0x9

    aget-object v5, v12, v5

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v10, :cond_4

    .line 113
    aget-object v5, v12, v13

    const-class v10, Ljava/io/File;

    const/16 v16, 0x4

    if-ne v5, v10, :cond_3

    aget-object v5, v12, v16

    const-class v10, Ljava/lang/Float;

    if-ne v5, v10, :cond_3

    const/4 v5, 0x7

    aget-object v5, v12, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v10, :cond_3

    const/16 v5, 0x8

    aget-object v5, v12, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v10, :cond_3

    move-object v4, v11

    goto :goto_2

    .line 116
    :cond_3
    aget-object v5, v12, v16

    const-class v10, Ljava/lang/Long;

    if-ne v5, v10, :cond_4

    const/4 v5, 0x5

    aget-object v5, v12, v5

    const-class v10, Ljava/lang/String;

    if-ne v5, v10, :cond_4

    const/4 v5, 0x6

    aget-object v5, v12, v5

    const-class v10, Ljava/lang/String;

    if-ne v5, v10, :cond_4

    move-object v7, v11

    .line 121
    :cond_4
    :goto_2
    array-length v5, v12

    if-ne v5, v13, :cond_5

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v10, :cond_5

    const/4 v5, 0x0

    aget-object v10, v12, v5

    const-class v13, Landroid/content/Context;

    if-ne v10, v13, :cond_6

    const/4 v10, 0x1

    aget-object v10, v12, v10

    const-class v13, Landroid/graphics/Bitmap;

    if-ne v10, v13, :cond_6

    aget-object v10, v12, v14

    if-ne v10, v0, :cond_6

    move-object v6, v11

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_3
    if-lt v15, v14, :cond_7

    if-nez v8, :cond_7

    move-object v8, v11

    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_9

    .line 133
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$1;

    invoke-direct {v0, v1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$1;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook;)V

    invoke-static {v4, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move v0, v10

    goto :goto_5

    :cond_9
    move v0, v5

    :goto_5
    if-eqz v7, :cond_a

    .line 149
    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantUploadHook$2;

    invoke-direct {v2, v1, v4, v6}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$2;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-static {v7, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    if-eqz v8, :cond_b

    .line 190
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->bitmapSlots([Ljava/lang/Class;)[I

    move-result-object v2

    .line 191
    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantUploadHook$3;

    invoke-direct {v3, v1, v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$3;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook;[I)V

    invoke-static {v8, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_6

    :cond_b
    :goto_7
    if-nez v0, :cond_c

    .line 210
    const-string v0, "(IE|InstantUpload30) no compatible photo/video send method"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_c
    const-string v2, "UploadInstants"

    invoke-static {v2}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(IE|InstantUpload31) build=63 send hooks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " photo448="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_d

    move v2, v10

    goto :goto_8

    :cond_d
    move v2, v5

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " video="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_e

    move v2, v10

    goto :goto_9

    :cond_e
    move v2, v5

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " preview="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v6, :cond_f

    move v5, v10

    :cond_f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 218
    const-string v2, "(IE|InstantUpload30) send-hook install failed"

    invoke-static {v2, v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method private static injectChip(Landroid/app/Activity;)V
    .locals 4

    .line 394
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModalActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chipHost:Landroid/app/Activity;

    if-ne v0, p0, :cond_1

    return-void

    .line 396
    :cond_1
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->removeChip()V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 399
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    return-void

    .line 401
    :cond_2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 402
    sget v2, Lps/reso/instaeclipse/R$string;->ig_instant_upload_chip:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 403
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 404
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x10

    .line 405
    invoke-static {p0, v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 406
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 407
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 408
    const-string v3, "#CC0A84FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0x16

    .line 409
    invoke-static {p0, v3}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 410
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800053

    .line 414
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v3, 0x14

    .line 415
    invoke-static {p0, v3}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x78

    .line 416
    invoke-static {p0, v3}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 417
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 421
    sput-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    .line 422
    sput-object p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chipHost:Landroid/app/Activity;

    .line 423
    const-string p0, "(IE|InstantUpload30) gallery chip injected"

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 425
    const-string v0, "(IE|InstantUpload30) chip failed"

    invoke-static {v0, p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static isVideo(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 485
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 487
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 488
    :cond_0
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return v0

    .line 491
    :catchall_0
    :cond_1
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->displayName(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 492
    const-string p1, ".mp4"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".mov"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".m4v"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".3gp"

    .line 493
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".webm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ".mkv"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method static synthetic lambda$decode$5(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    const/4 p2, 0x1

    .line 603
    invoke-virtual {p0, p2}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    const/4 p2, 0x0

    .line 604
    invoke-virtual {p0, p2}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 605
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 606
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x5a0

    if-le v0, v1, :cond_0

    const/high16 v1, 0x44b40000    # 1440.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 609
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$failureToast$1(Landroid/app/Activity;)V
    .locals 3

    .line 275
    sget v0, Lps/reso/instaeclipse/R$string;->ig_instant_upload_fail:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$injectChip$2(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 418
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->launchPicker(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$onConsumed$0(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V
    .locals 1

    const/4 v0, 0x1

    .line 256
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dispose(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Z)V

    return-void
.end method

.method static synthetic lambda$prepareVideo$3(JLps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Landroid/app/Activity;)V
    .locals 2

    .line 550
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->PICK_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p0, p0, v0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 551
    invoke-static {p2, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dispose(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    if-nez p2, :cond_1

    .line 555
    sget p1, Lps/reso/instaeclipse/R$string;->ig_instant_upload_video_fail:I

    new-array p2, p0, [Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 556
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 559
    :cond_1
    invoke-static {p2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->arm(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V

    .line 560
    iget-object p2, p2, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->preview:Landroid/graphics/Bitmap;

    invoke-static {p3, p2, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->markChipReady(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V

    .line 561
    sget p2, Lps/reso/instaeclipse/R$string;->ig_instant_upload_video_ready:I

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p3, p2, p0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 562
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$prepareVideo$4(Landroid/app/Activity;Landroid/net/Uri;J)V
    .locals 9

    const/4 v0, 0x0

    .line 504
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "instaeclipse_quicksnap"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "cache mkdir failed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_1
    :goto_0
    const-string v2, "gallery_"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->videoSuffix(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 507
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 508
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p1, :cond_7

    const/high16 v3, 0x20000

    .line 510
    :try_start_3
    new-array v3, v3, [B

    .line 512
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 513
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 514
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    .line 516
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 519
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 520
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    .line 522
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x13

    .line 524
    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_5

    .line 526
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-lez v2, :cond_5

    if-eqz v3, :cond_5

    .line 527
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v6, :cond_5

    .line 528
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x2

    .line 530
    invoke-virtual {p1, v4, v5, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 533
    :try_start_7
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 535
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->downscaleAndRecycle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 536
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->software(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 538
    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    invoke-direct {v2, v1, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;)V

    move-object v0, v2

    goto :goto_6

    .line 537
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v2, "video preview unavailable"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 529
    :cond_5
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid video metadata"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v2

    .line 533
    :try_start_9
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 534
    throw v2

    .line 514
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v2, "empty selected video"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_1
    move-exception v3

    goto :goto_2

    .line 509
    :cond_7
    :try_start_a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "picker stream is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 507
    :goto_2
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v2

    if-eqz p1, :cond_8

    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :try_start_e
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception p1

    goto :goto_5

    :catchall_6
    move-exception p1

    move-object v1, v0

    .line 541
    :goto_5
    :try_start_f
    const-string v2, "(IE|InstantUpload30) video preparation failed"

    invoke-static {v2, p1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v1, :cond_9

    .line 544
    :try_start_10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 549
    :catchall_7
    :cond_9
    :goto_6
    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p3, v0, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda4;-><init>(JLps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_8
    move-exception p0

    if-eqz v1, :cond_a

    .line 544
    :try_start_11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 546
    :catchall_9
    :cond_a
    throw p0
.end method

.method private static launchPicker(Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x0

    .line 431
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v2, "android.intent.extra.MIME_TYPES"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "image/*"

    aput-object v4, v3, v0

    const-string v4, "video/*"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    sget v2, Lps/reso/instaeclipse/R$string;->ig_instant_upload_chip:I

    new-array v3, v0, [Ljava/lang/Object;

    .line 436
    invoke-static {p0, v2, v3}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1e5a

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    sget v1, Lps/reso/instaeclipse/R$string;->ig_instant_upload_fail:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static markChipReady(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V
    .locals 4

    .line 340
    :try_start_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chipHost:Landroid/app/Activity;

    if-eq v0, p0, :cond_1

    :cond_0
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->injectChip(Landroid/app/Activity;)V

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 342
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 343
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 345
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p1, 0x54

    .line 346
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result p1

    .line 347
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p1, 0x800053

    .line 348
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p1, 0x14

    .line 349
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 p1, 0xac

    .line 350
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 351
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, -0x1000000

    .line 353
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0xc

    .line 354
    invoke-static {p0, v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x2

    .line 355
    invoke-static {p0, v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result v2

    const-string v3, "#30D158"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 356
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 357
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 358
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    sput-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    goto :goto_0

    .line 360
    :cond_2
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    :cond_3
    :goto_0
    sget-object p1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 365
    sget p2, Lps/reso/instaeclipse/R$string;->ig_instant_upload_chip_video_ready:I

    goto :goto_1

    .line 366
    :cond_4
    sget p2, Lps/reso/instaeclipse/R$string;->ig_instant_upload_chip_ready:I

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 364
    invoke-static {p0, p2, v0}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 368
    const-string p2, "#CC30D158"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p2, 0x16

    .line 369
    invoke-static {p0, p2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dp(Landroid/app/Activity;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 370
    sget-object p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    sget-object p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method private static onConsumed(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Ljava/lang/String;)V
    .locals 4

    .line 253
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    iget-boolean v0, p0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;->video:Z

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda3;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "(IE|InstantUpload30) gallery "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " substituted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized peekFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    .locals 5

    const-class v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingSetAt:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 233
    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->dispose(Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;Z)V

    const/4 v1, 0x0

    .line 234
    sput-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    .line 236
    :cond_0
    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static prepareVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5

    .line 497
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->PICK_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 498
    sget v2, Lps/reso/instaeclipse/R$string;->ig_instant_upload_video_loading:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lps/reso/instaeclipse/utils/i18n/I18n;->t(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 500
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Landroid/net/Uri;J)V

    const-string p0, "IE-InstantVideoPicker"

    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private registerLifecycle(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 313
    sget-boolean p1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->lifecycleRegistered:Z

    if-eqz p1, :cond_0

    return-void

    .line 316
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 318
    :cond_1
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook$5;

    invoke-direct {v0, p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook$5;-><init>(Lps/reso/instaeclipse/mods/media/InstantUploadHook;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 329
    sput-boolean p1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->lifecycleRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static removeChip()V
    .locals 2

    .line 378
    :try_start_0
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :catchall_0
    :cond_0
    :try_start_1
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 383
    sget-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    const/4 v0, 0x0

    .line 385
    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chip:Landroid/widget/TextView;

    .line 386
    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->preview:Landroid/widget/ImageView;

    .line 387
    sput-object v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->chipHost:Landroid/app/Activity;

    return-void
.end method

.method private static software(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 626
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    return-object p0

    .line 627
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 628
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v0
.end method

.method private static declared-synchronized takeFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    .locals 3

    const-class v0, Lps/reso/instaeclipse/mods/media/InstantUploadHook;

    monitor-enter v0

    .line 240
    :try_start_0
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->peekFresh()Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;

    move-result-object v1

    const/4 v2, 0x0

    .line 241
    sput-object v2, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->pendingMedia:Lps/reso/instaeclipse/mods/media/InstantUploadHook$PendingMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static videoSuffix(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 582
    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->displayName(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    .line 583
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 585
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 586
    const-string p1, "\\.[a-z0-9]{2,5}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 588
    :cond_0
    const-string p0, ".mp4"

    return-object p0
.end method


# virtual methods
.method public install(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->hookSwap(Ljava/lang/ClassLoader;)V

    .line 91
    invoke-direct {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->hookCameraOpen(Ljava/lang/ClassLoader;)V

    .line 92
    invoke-direct {p0}, Lps/reso/instaeclipse/mods/media/InstantUploadHook;->hookPickerResult()V

    return-void
.end method
