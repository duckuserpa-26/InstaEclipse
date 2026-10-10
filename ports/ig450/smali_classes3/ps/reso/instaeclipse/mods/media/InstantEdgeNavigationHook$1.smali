.class Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "InstantEdgeNavigationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->install(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;


# direct methods
.method constructor <init>(Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 35
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetenabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    .line 39
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->consumption:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->kind:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    iget-boolean v2, v2, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->v449:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 40
    :cond_2
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->receiver:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$1;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    iget-object v1, v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->viewer:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 42
    :cond_3
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetsessions()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Session;

    if-nez v1, :cond_4

    .line 43
    new-instance v1, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Session;

    invoke-direct {v1, v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Session;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetsessions()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "native viewer bound"

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 44
    :cond_4
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetstates()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    move-result-object v0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object p1, p1, v2

    invoke-virtual {v0, p1, v1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$smfailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
