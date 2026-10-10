.class Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "ProfilePicturePreviewHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->install(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 53
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$sfgetactiveProfile()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 54
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$smcancelPendingPress()V

    .line 55
    invoke-static {}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$sfgetactiveProfile()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method
