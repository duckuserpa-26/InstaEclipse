.class public final Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;
.super Ljava/lang/Object;
.source "VerifiedInstagramBuild.java"


# static fields
.field public static volatile is449:Z

.field public static volatile is450:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    const-string v0, "(IE|Compatibility) build=69-dev1 Instagram="

    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    sput-boolean v1, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.instagram.android"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 15
    const-string v2, "449.0.0.52.84"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    const-wide/32 v4, 0x16fa71d0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    const-string v2, "450.0.0.50.77"
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :profile450_done
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J
    move-result-wide v2
    const-wide/32 v4, 0x16fbf6ae
    cmp-long v2, v2, v4
    if-nez v2, :profile450_done
    const/4 v2, 0x1
    sput-boolean v2, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    :profile450_done

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " verified449="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is449:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " profile450="
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    sget-boolean v0, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    const-string v0, "(IE|Compatibility) version lookup failed"

    invoke-static {v0, p0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
