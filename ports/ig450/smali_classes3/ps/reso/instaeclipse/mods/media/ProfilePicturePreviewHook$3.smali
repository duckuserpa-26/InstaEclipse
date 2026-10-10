.class Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$3;
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

    .line 63
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
 .method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;
    check-cast v0, Landroid/app/Activity;
    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ProfileUi450;->capture(Landroid/app/Activity;)V
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    instance-of v1, v0, Landroid/view/ViewGroup;
    if-eqz v1, :done
    check-cast v0, Landroid/view/ViewGroup;
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;
    const/4 v1, 0x0
    aget-object p1, p1, v1
    check-cast p1, Landroid/view/MotionEvent;
    invoke-static {v0, p1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$smobserveTouch(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    :done
    return-void
.end method
