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
    .locals 3

    .line 65
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_0

    .line 67
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$smobserveTouch(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
