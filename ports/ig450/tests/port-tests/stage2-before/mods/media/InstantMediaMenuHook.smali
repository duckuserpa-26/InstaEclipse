.class public final Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;
.super Ljava/lang/Object;
.source "InstantMediaMenuHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;,
        Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delete(Ljava/io/File;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static dismissLoading(Landroid/app/ProgressDialog;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static download(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/widget/Button;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Download Instant in corso"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    iget-object v0, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->username:Ljava/lang/String;

    iget-object v1, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->mediaId:Ljava/lang/String;

    iget-boolean v2, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->video:Z

    const-string v3, "instant"

    invoke-static {v0, v3, v1, v2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->buildFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 242
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda1;

    move-object v4, v1

    move-object v5, p1

    move-object v8, p2

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda1;-><init>(Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Button;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 233
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 234
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$download$10(Landroid/content/Context;)V
    .locals 2

    .line 249
    const-string v0, "Instant salvato"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$download$11(Landroid/content/Context;)V
    .locals 2

    .line 253
    const-string v0, "Download Instant non riuscito"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$download$12(Landroid/app/Activity;Landroid/widget/Button;)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$download$13(Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Button;Landroid/app/Activity;)V
    .locals 3

    const-string v0, "(IE|InstantsMedia) download failed: "

    .line 245
    :try_start_0
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->audioUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->url:Ljava/lang/String;

    iget-boolean v2, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->video:Z

    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->username:Ljava/lang/String;

    invoke-static {p1, v1, p2, v2, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->url:Ljava/lang/String;

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->audioUrl:Ljava/lang/String;

    iget-object p0, p0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->username:Ljava/lang/String;

    invoke-static {p1, v1, v2, p2, p0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadAndSaveTracks(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    .line 248
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p3, :cond_2

    .line 255
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4, p3}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;Landroid/widget/Button;)V

    :goto_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 251
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 252
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_2

    .line 255
    sget-object p0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4, p3}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;Landroid/widget/Button;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    if-eqz p3, :cond_3

    sget-object p1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda5;

    invoke-direct {p2, p4, p3}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_3
    throw p0
.end method

.method static synthetic lambda$perform$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$perform$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$perform$2(Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;ZLandroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->dismissLoading(Landroid/app/ProgressDialog;)V

    .line 114
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 118
    :try_start_0
    invoke-static {p3, p4}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->showFullscreen(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 119
    invoke-static {p3, p4, p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->download(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/widget/Button;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    iget-object p0, p4, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->playbackFile:Ljava/io/File;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    .line 122
    const-string p0, "Impossibile aprire il media Instant"

    const/4 p1, 0x0

    invoke-static {p5, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    .line 115
    :cond_2
    :goto_1
    iget-object p0, p4, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->playbackFile:Ljava/io/File;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$perform$3(Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;)V
    .locals 0

    .line 128
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->dismissLoading(Landroid/app/ProgressDialog;)V

    .line 129
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 130
    const-string p0, "Media Instant non disponibile"

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$perform$4(ILjava/lang/Object;ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;ZLjava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    const-string v1, "(IE|InstantsQuality31) "

    const-string v9, "(IE|InstantsQuality31) action failed: "

    const/16 v2, 0x1c1

    if-ne v0, v2, :cond_0

    .line 67
    :try_start_0
    invoke-static/range {p1 .. p2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->read449(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_0
    const/16 v2, 0x1c0

    if-ne v0, v2, :cond_1

    .line 69
    invoke-static/range {p1 .. p2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->read448(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/16 v2, 0x1bf

    if-ne v0, v2, :cond_2

    .line 70
    invoke-static/range {p1 .. p2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->read447(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 72
    invoke-virtual {v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->bestAudible()Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->best()Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    if-eqz p2, :cond_5

    .line 75
    :try_start_2
    invoke-static/range {p1 .. p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->declaredHasAudio(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 76
    :goto_3
    const-string v5, " declaredAudio="

    const-string v6, " muxedAudio="

    const-string v12, "(IE|InstantsQuality31) media="

    if-eqz v3, :cond_7

    .line 77
    :try_start_3
    iget-object v0, v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->url:Ljava/lang/String;

    iget-object v13, v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->audioUrl:Ljava/lang/String;

    invoke-virtual {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->hasMuxedAudio()Z

    move-result v14

    .line 78
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " candidates="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v2, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->variants:Ljava/util/List;

    .line 79
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " selected="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v15, v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->width:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "x"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v15, v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->height:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " bitrate="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v10, v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->bandwidth:J

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " source="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v3, v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->source:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " audioPolicy=prefer-audible separateAudio="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v13, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_6

    :cond_7
    if-eqz p2, :cond_8

    .line 85
    invoke-static/range {p1 .. p1}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->bestVideoUrlFromMedia(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_8
    move-object/from16 v3, p1

    .line 86
    :try_start_4
    invoke-static {v7, v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->imageUrlFromMedia(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    if-nez v3, :cond_9

    if-nez p2, :cond_9

    .line 88
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "A00"

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Object;

    move-object/from16 v14, p5

    invoke-virtual {v10, v14, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 89
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v11, "getUrl"

    new-array v14, v13, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_9
    if-eqz p2, :cond_b

    if-eqz v3, :cond_a

    .line 91
    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->isVideoUrl(Ljava/lang/String;)Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v10, :cond_b

    :cond_a
    const/4 v3, 0x0

    .line 92
    :cond_b
    :try_start_6
    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->isMuxedProgressive(Ljava/lang/String;)Z

    move-result v14

    .line 93
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fallback=resolution-unavailable profile="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v13, 0x0

    :goto_6
    if-eqz v2, :cond_c

    .line 97
    :try_start_7
    iget-boolean v0, v2, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->dashSkipped:Z

    if-eqz v0, :cond_c

    .line 98
    const-string v0, "(IE|InstantsQuality31) unsupported DASH entries skipped; ranked available complete files"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 99
    :cond_c
    :try_start_8
    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 100
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_d

    const/4 v5, 0x0

    .line 132
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    return-void

    :cond_d
    if-eqz p2, :cond_f

    if-nez v13, :cond_f

    if-nez v14, :cond_f

    if-eqz v2, :cond_e

    .line 102
    :try_start_9
    iget-boolean v0, v2, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->dashSkipped:Z

    if-eqz v0, :cond_e

    .line 103
    const-string v0, "Audio Instant: il manifest ricevuto non espone una traccia utilizzabile"

    goto :goto_7

    .line 104
    :cond_e
    const-string v0, "Audio Instant: Instagram non ha fornito una traccia audio per questo video"

    .line 105
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has_audio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda2;

    invoke-direct {v2, v8, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    if-eqz p8, :cond_10

    if-eqz v13, :cond_10

    .line 109
    invoke-static {v8, v3, v13}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->prepareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v10, v5

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    .line 110
    :goto_8
    :try_start_a
    new-instance v11, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;

    move-object v0, v11

    move-object v1, v3

    move-object v2, v13

    move/from16 v3, p2

    move-object/from16 v4, p9

    move-object/from16 v5, p3

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 112
    :try_start_b
    sget-object v10, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v12, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object/from16 v1, p10

    move-object/from16 v2, p6

    move/from16 v3, p8

    move-object/from16 v4, p4

    move-object v5, v11

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda3;-><init>(Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;ZLandroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/content/Context;)V

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v1, 0x0

    .line 132
    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    .line 99
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Instant URL unavailable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :goto_9
    move-object v10, v1

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    :goto_a
    const/4 v1, 0x0

    :goto_b
    move-object v10, v1

    .line 126
    :goto_c
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda4;

    move-object/from16 v2, p6

    move-object/from16 v3, p10

    invoke-direct {v1, v3, v2, v7}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda4;-><init>(Landroid/app/ProgressDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 132
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    :goto_d
    return-void

    :catchall_3
    move-exception v0

    :goto_e
    invoke-static {v10}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    throw v0
.end method

.method static synthetic lambda$showFullscreen$5(Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->setVideoSize(II)V

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 181
    invoke-virtual {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->start()V

    return-void
.end method

.method static synthetic lambda$showFullscreen$6(Landroid/app/Activity;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 184
    const-string p1, "Impossibile riprodurre il video"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$showFullscreen$7(Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/content/DialogInterface;)V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->stopPlayback()V

    iget-object p0, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->playbackFile:Ljava/io/File;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$showFullscreen$8(Landroid/webkit/WebView;Landroid/content/DialogInterface;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method static synthetic lambda$showFullscreen$9(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 218
    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->download(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/widget/Button;)V

    return-void
.end method

.method private static perform(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Object;ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    if-eqz p7, :cond_1

    if-eqz p3, :cond_1

    .line 55
    new-instance v0, Landroid/app/ProgressDialog;

    move-object v6, p0

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move-object v6, p0

    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    if-eqz v12, :cond_2

    .line 57
    const-string v0, "Caricamento video\u2026"

    invoke-virtual {v12, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {v12, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 59
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda7;

    invoke-direct {v0, v8}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v12, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 60
    invoke-virtual {v12}, Landroid/app/ProgressDialog;->show()V

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 63
    sget-object v0, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda8;

    move-object v1, v13

    move/from16 v2, p4

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object v6, p0

    move-object v7, p1

    move/from16 v10, p7

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v12}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;ZLjava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    :goto_1
    return-void
.end method

.method static prepareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "ie_instant_video_"

    const-string v2, ".mp4"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    const-string v3, "ie_instant_audio_"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v3, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    const-string v4, "ie_instant_merged_"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {v4, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 149
    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 150
    invoke-static {p2, v3}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->downloadToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lps/reso/instaeclipse/mods/media/FeedVideoDownloadHook;->mergeVideoAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    return-object v1

    :catchall_0
    move-exception p0

    move-object p1, v1

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v1

    :goto_0
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    .line 156
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    .line 157
    throw p0
.end method

.method private static showFullscreen(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;)V
    .locals 14

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 163
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 165
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v3, -0x1000000

    .line 167
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 169
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-boolean v5, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->video:Z

    if-eqz v5, :cond_1

    const-string v5, "video"

    goto :goto_0

    :cond_1
    const-string v5, "image"

    :goto_0
    const-string v6, "(IE|InstantsMedia24) fullscreen fit=contain type="

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    .line 172
    iget-boolean v5, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->video:Z

    if-eqz v5, :cond_3

    .line 173
    new-instance v5, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;

    invoke-direct {v5, p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v6, Landroid/widget/MediaController;

    invoke-direct {v6, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v6, v5}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v5, v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 177
    iget-object v6, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->playbackFile:Ljava/io/File;

    if-nez v6, :cond_2

    iget-object v6, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    :cond_2
    iget-object v6, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->playbackFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 178
    new-instance v6, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda9;

    invoke-direct {v6, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda9;-><init>(Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;)V

    invoke-virtual {v5, v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 183
    new-instance v6, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda10;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 187
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-direct {v6, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda11;

    invoke-direct {v4, v5, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda11;-><init>(Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$FullscreenVideoView;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    .line 190
    :cond_3
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 192
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 193
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 194
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 195
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 196
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 197
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 198
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 199
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda12;

    invoke-direct {v4, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda12;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "<!doctype html><html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,maximum-scale=8,user-scalable=yes\"><style>html,body{margin:0;padding:0;width:100%;height:100%;overflow:hidden;background:#000}img{display:block;width:100vw;height:100vh;object-fit:contain;border:0!important;border-radius:0!important;clip-path:none!important;transform:none}</style></head><body><img src=\""

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->url:Ljava/lang/String;

    .line 208
    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->htmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\"></body></html>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "UTF-8"

    const/4 v13, 0x0

    const/4 v9, 0x0

    .line 204
    const-string v11, "text/html"

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_2
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 212
    const-string v5, "Scarica media"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 217
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$$ExternalSyntheticLambda13;-><init>(Landroid/app/Activity;Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;Landroid/widget/Button;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 220
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 221
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 223
    invoke-virtual {p0, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 224
    invoke-virtual {p0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 225
    invoke-virtual {p0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 226
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1606

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    return-void

    .line 162
    :cond_5
    :goto_3
    iget-object p0, p1, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook$ResolvedMedia;->playbackFile:Ljava/io/File;

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaMenuHook;->delete(Ljava/io/File;)V

    return-void
.end method
