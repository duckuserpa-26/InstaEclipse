.class public final synthetic Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$showForAvatar$2(Landroid/view/ViewGroup;)V

    return-void
.end method
