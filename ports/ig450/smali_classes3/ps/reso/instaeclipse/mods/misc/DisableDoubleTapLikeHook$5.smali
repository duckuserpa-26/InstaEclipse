.class Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "DisableDoubleTapLikeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;->install449(Ljava/lang/ClassLoader;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;

.field final synthetic val$kind:Ljava/lang/reflect/Field;

.field final synthetic val$unit:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;->this$0:Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook;

    iput-object p2, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;->val$kind:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;->val$unit:Ljava/lang/Object;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableDoubleTapLike:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;->val$kind:Ljava/lang/reflect/Field;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x4

    sget-boolean v2, Lps/reso/instaeclipse/utils/core/VerifiedInstagramBuild;->is450:Z
    if-eqz v2, :kind_selected
    const/4 v1, 0x6
    :kind_selected

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lps/reso/instaeclipse/mods/misc/DisableDoubleTapLikeHook$5;->val$unit:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
