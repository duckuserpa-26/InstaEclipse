.class public final synthetic Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$showForAvatar$1(Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
