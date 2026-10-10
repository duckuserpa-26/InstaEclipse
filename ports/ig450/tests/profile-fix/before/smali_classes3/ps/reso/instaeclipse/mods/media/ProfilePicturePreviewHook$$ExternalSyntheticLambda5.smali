.class public final synthetic Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewGroup;

    iput-object p2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda5;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$observeTouch$0(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
