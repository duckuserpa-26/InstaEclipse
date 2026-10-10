.class public final Lps/reso/instaeclipse/mods/media/ProfileUi450;
.super Ljava/lang/Object;
.source "ProfileUi450.java"

.field private static touchedActivity:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference",
      "<",
      "Landroid/app/Activity;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 2
  .prologue
  .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfileUi450;->touchedActivity:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 13
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static capture(Landroid/app/Activity;)V
  .registers 2
  .prologue
  .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p0 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    sput-object v0, Lps/reso/instaeclipse/mods/media/ProfileUi450;->touchedActivity:Ljava/lang/ref/WeakReference;
  .line 18
    return-void
.end method

.method public static context(Landroid/view/View;)Landroid/content/Context;
  .registers 5
  .prologue
  .line 21
    if-eqz p0, :L0
    invoke-virtual { p0 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    move-result-object v0
    if-nez v0, :L1
  :L0
  .line 22
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "profile view detached"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 23
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
  .line 24
    const/4 v0, 0
    move v2, v0
  :L2
    const/16 v0, 16
    if-ge v2, v0, :L5
    if-eqz v1, :L5
  .line 25
    instance-of v0, v1, Landroid/app/Activity;
    if-eqz v0, :L4
    move-object v0, v1
    check-cast v0, Landroid/app/Activity;
    invoke-static { v0, p0 }, Lps/reso/instaeclipse/mods/media/ProfileUi450;->owns(Landroid/app/Activity;Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L4
  :L3
  .line 33
    return-object v1
  :L4
  .line 27
    instance-of v0, v1, Landroid/content/ContextWrapper;
    if-nez v0, :L6
  :L5
  .line 32
    sget-object v0, Lps/reso/instaeclipse/mods/media/ProfileUi450;->touchedActivity:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/Activity;
  .line 33
    invoke-static { v0, p0 }, Lps/reso/instaeclipse/mods/media/ProfileUi450;->owns(Landroid/app/Activity;Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L7
    move-object v1, v0
    goto :L3
  :L6
    move-object v0, v1
  .line 28
    check-cast v0, Landroid/content/ContextWrapper;
    invoke-virtual { v0 }, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object v3
  .line 29
    if-eq v3, v1, :L5
  .line 24
    add-int/lit8 v0, v2, 1
    move v2, v0
    move-object v1, v3
    goto :L2
  :L7
  .line 34
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "no live activity owns profile view"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private static owns(Landroid/app/Activity;Landroid/view/View;)Z
  .registers 7
  .prologue
    const/4 v1, 0
  .line 38
    if-eqz p0, :L0
    invoke-virtual { p0 }, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :L0
    invoke-virtual { p0 }, Landroid/app/Activity;->isDestroyed()Z
    move-result v0
    if-nez v0, :L0
  .line 39
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-nez v0, :L2
  :L0
    move v0, v1
  :L1
  .line 46
    return v0
  :L2
  .line 40
    invoke-virtual { p0 }, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v3
    move v2, v1
  :L3
  .line 41
    if-eqz p1, :L7
    const/16 v0, 64
    if-ge v2, v0, :L7
  .line 42
    if-ne p1, v3, :L4
    const/4 v0, 1
    goto :L1
  :L4
  .line 43
    invoke-virtual { p1 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  .line 44
    instance-of v4, v0, Landroid/view/View;
    if-eqz v4, :L6
    check-cast v0, Landroid/view/View;
  :L5
  .line 41
    add-int/lit8 v2, v2, 1
    move-object p1, v0
    goto :L3
  :L6
  .line 44
    const/4 v0, 0
    goto :L5
  :L7
    move v0, v1
  .line 46
    goto :L1
.end method

.method public static report(Landroid/view/View;Ljava/lang/String;Ljava/lang/Throwable;)V
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L12
  .catch Ljava/lang/Throwable; { :L5 .. :L6 } :L12
  .catch Ljava/lang/Throwable; { :L8 .. :L9 } :L11
  .registers 10
  .prologue
    const/4 v2, 0
  .line 51
    if-nez p2, :L4
    const-string v0, "Unknown"
  :L0
  .line 53
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "(IE|ProfilePreview dev5) "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, " failed: "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    move v3, v2
  :L1
  .line 55
    if-eqz p2, :L7
    const/4 v1, 5
    if-ge v3, v1, :L7
  .line 56
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "(IE|ProfilePreview dev5) cause="
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { p2 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  .line 57
    invoke-virtual { p2 }, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    move-result-object v4
    move v1, v2
  :L2
  .line 58
    array-length v5, v4
    if-ge v1, v5, :L5
    const/16 v5, 24
    if-ge v1, v5, :L5
  .line 59
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "(IE|ProfilePreview dev5) at "
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    aget-object v6, v4, v1
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static { v5 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L3
  .line 58
    add-int/lit8 v1, v1, 1
    goto :L2
  :L4
  .line 51
    invoke-virtual { p2 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L5
  .line 60
    invoke-virtual { p2 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
  :L6
    move-result-object v4
  .line 61
    if-ne v4, p2, :L10
  :L7
  .line 66
    if-eqz p0, :L9
  :L8
  .line 67
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Foto profilo: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, " / "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v2, 1
    invoke-static { v1, v0, v2 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
  .line 68
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L9
  .line 70
    return-void
  :L10
  .line 55
    add-int/lit8 v1, v3, 1
    move v3, v1
    move-object p2, v4
    goto/16 :L1
  :L11
  .line 69
    move-exception v0
    goto :L9
  :L12
  .line 64
    move-exception v1
    goto :L7
.end method
