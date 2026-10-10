.class public final Lps/reso/instaeclipse/utils/DeoptDiagnostic450;
.super Ljava/lang/Object;
.source "DeoptDiagnostic450.java"

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 11
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static deoptimizeMethod(Ljava/lang/reflect/Member;)Z
  .catch Ljava/lang/Throwable; { :L0 .. :L4 } :L5
  .registers 4
  .prologue
  .line 15
    if-nez p0, :L3
  :L0
    const-string v0, "null"
  :L1
  .line 17
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "(IE|GCProbe dev6) explicit-deopt SKIPPED target="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V
  :L2
  .line 19
    const/4 v0, 0
    return v0
  :L3
  .line 16
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { p0 }, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "."
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-interface { p0 }, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
    move-result-object v0
    goto :L1
  :L5
  .line 18
    move-exception v0
    goto :L2
.end method
