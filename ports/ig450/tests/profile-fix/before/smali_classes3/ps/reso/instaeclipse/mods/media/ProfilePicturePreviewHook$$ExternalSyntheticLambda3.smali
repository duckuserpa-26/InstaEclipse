.class public final synthetic Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewGroup;

    iput-object p2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$3:Landroid/view/View;

    iput-object p5, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$3:Landroid/view/View;

    iget-object v4, p0, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lps/reso/instaeclipse/mods/media/ProfilePicturePreviewHook;->lambda$showForAvatar$3(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method
