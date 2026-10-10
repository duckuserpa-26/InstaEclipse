.class public final synthetic Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Button;

    iput-boolean p2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;->f$0:Landroid/widget/Button;

    iget-boolean v1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$downloadPhoto$6(Landroid/widget/Button;ZLandroid/view/View;)V

    return-void
.end method
