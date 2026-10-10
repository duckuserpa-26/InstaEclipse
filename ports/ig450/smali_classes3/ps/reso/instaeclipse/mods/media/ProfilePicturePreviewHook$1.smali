.class Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$1;
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

    .line 46
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    const-string v0, "(IE|ProfilePreview) profile resumed dev3"
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->-$$Nest$sfputactiveProfile(Ljava/lang/ref/WeakReference;)V

    const-string v0, "(IE|ProfilePreview) profile resumed dev3"
    invoke-static {v0}, Lps/reso/instaeclipse/utils/log/ModuleLog;->line(Ljava/lang/String;)V

    return-void
.end method
