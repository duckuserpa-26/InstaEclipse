.class final Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;
.super Ljava/lang/Object;
.source "InstantUpload450.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lps/reso/instaeclipse/mods/media/InstantUpload450;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "Bindings"
.end annotation

.field final photo:Ljava/lang/reflect/Method;

.field final preview:Ljava/lang/reflect/Method;

.field final video:Ljava/lang/reflect/Method;

.method constructor <init>(Ljava/lang/ClassLoader;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .registers 13
  .prologue
    const/4 v10, 4
    const/4 v9, 3
    const/4 v8, 2
    const/4 v7, 1
    const/4 v0, 0
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 21
    const-string v1, "com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel"
    invoke-virtual { p1, v1 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
  .line 22
    const-string v2, "X.0haL"
    invoke-virtual { p1, v2 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
  .line 23
    const-string v3, "A01"
    const/16 v4, 13
    new-array v4, v4, [Ljava/lang/Class;
    const-class v5, Landroid/content/Context;
    aput-object v5, v4, v0
    const-class v5, Landroid/graphics/Bitmap;
    aput-object v5, v4, v7
    const-string v5, "X.0K70"
    invoke-virtual { p1, v5 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v5
    aput-object v5, v4, v8
    aput-object v1, v4, v9
    const-string v5, "X.0TeE"
    invoke-virtual { p1, v5 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v5
    aput-object v5, v4, v10
    const/4 v5, 5
    const-class v6, Ljava/lang/Long;
    aput-object v6, v4, v5
    const/4 v5, 6
    const-class v6, Ljava/lang/String;
    aput-object v6, v4, v5
    const/4 v5, 7
    const-class v6, Ljava/lang/String;
    aput-object v6, v4, v5
    const/16 v5, 8
    aput-object v2, v4, v5
    const/16 v5, 9
    const-string v6, "X.02ik"
    invoke-virtual { p1, v6 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v6
    aput-object v6, v4, v5
    const/16 v5, 10
    const-string v6, "X.04G3"
    invoke-virtual { p1, v6 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v6
    aput-object v6, v4, v5
    const/16 v5, 11
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    aput-object v6, v4, v5
    const/16 v5, 12
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v6, v4, v5
    invoke-virtual { v1, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    iput-object v3, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->photo:Ljava/lang/reflect/Method;
  .line 24
    const-string v3, "A02"
    const/16 v4, 11
    new-array v4, v4, [Ljava/lang/Class;
    const-class v5, Landroid/content/Context;
    aput-object v5, v4, v0
    const-class v5, Landroid/graphics/Bitmap;
    aput-object v5, v4, v7
    const-string v5, "X.0TGO"
    invoke-virtual { p1, v5 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v5
    aput-object v5, v4, v8
    aput-object v1, v4, v9
    const-class v5, Ljava/io/File;
    aput-object v5, v4, v10
    const/4 v5, 5
    const-class v6, Ljava/lang/Float;
    aput-object v6, v4, v5
    const/4 v5, 6
    const-class v6, Ljava/lang/String;
    aput-object v6, v4, v5
    const/4 v5, 7
    aput-object v2, v4, v5
    const/16 v2, 8
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v2
    const/16 v2, 9
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v2
    const/16 v2, 10
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    aput-object v5, v4, v2
    invoke-virtual { v1, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    iput-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->video:Ljava/lang/reflect/Method;
  .line 25
    const-string v2, "A05"
    new-array v3, v9, [Ljava/lang/Class;
    const-class v4, Landroid/content/Context;
    aput-object v4, v3, v0
    const-class v4, Landroid/graphics/Bitmap;
    aput-object v4, v3, v7
    aput-object v1, v3, v8
    invoke-virtual { v1, v2, v3 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
    iput-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->preview:Ljava/lang/reflect/Method;
  .line 26
    new-array v1, v9, [Ljava/lang/reflect/Method;
    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->photo:Ljava/lang/reflect/Method;
    aput-object v2, v1, v0
    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->video:Ljava/lang/reflect/Method;
    aput-object v2, v1, v7
    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->preview:Ljava/lang/reflect/Method;
    aput-object v2, v1, v8
    array-length v2, v1
  :L0
    if-ge v0, v2, :L2
    aget-object v3, v1, v0
  .line 27
    invoke-virtual { v3 }, Ljava/lang/reflect/Method;->getModifiers()I
    move-result v4
    invoke-static { v4 }, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    move-result v4
    if-nez v4, :L1
    new-instance v0, Ljava/lang/NoSuchMethodException;
    const-string v1, "non-static upload method"
    invoke-direct { v0, v1 }, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 28
    invoke-virtual { v3, v7 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 26
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 30
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->photo:Ljava/lang/reflect/Method;
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v0
    const-class v1, Ljava/lang/Object;
    if-ne v0, v1, :L3
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->video:Ljava/lang/reflect/Method;
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v0
    const-class v1, Ljava/lang/Object;
    if-ne v0, v1, :L3
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/InstantUpload450$Bindings;->preview:Ljava/lang/reflect/Method;
    invoke-virtual { v0 }, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    move-result-object v0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    if-eq v0, v1, :L4
  :L3
    new-instance v0, Ljava/lang/NoSuchMethodException;
    const-string v1, "upload return type"
    invoke-direct { v0, v1 }, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 31
    return-void
.end method
