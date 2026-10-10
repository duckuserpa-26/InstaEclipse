.class Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$6;
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

    .line 79
    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$6;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 81
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetcomposing()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Stack;

    .line 82
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetenabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$6;->val$b:Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;

    iget-boolean v2, v2, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$Bindings;->v449:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x11a

    goto :goto_0

    :cond_0
    const/16 v2, 0x103

    :goto_0
    if-ne v1, v2, :cond_1

    .line 83
    invoke-static {}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook;->-$$Nest$sfgetcallbacks()Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;

    move-result-object v1

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lps/reso/instaeclipse/mods/media/InstantEdgeNavigationHook$WeakIdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
