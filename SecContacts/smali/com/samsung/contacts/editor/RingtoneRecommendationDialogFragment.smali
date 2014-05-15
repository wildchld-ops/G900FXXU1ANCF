.class public final Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;
.super Landroid/app/DialogFragment;
.source "RingtoneRecommendationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

.field private mOffset:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSelectedPosition:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I

    return-void
.end method

.method public static DismissDialog(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->playRingtone(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mOffset:I

    return v0
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2

    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method private playRingtone(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mOffset:I

    iget-object v2, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/net/Uri;ILcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->setOffset(I)V

    invoke-virtual {v0, p3}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->setListener(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;)V

    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;->onCanceled()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;

    invoke-direct {v0, p0, v2}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$1;-><init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Landroid/view/LayoutInflater;)V

    new-instance v1, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$2;-><init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;Landroid/widget/BaseAdapter;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e036a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$4;-><init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$3;-><init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$5;-><init>(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v3, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v3
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->DismissDialog(Landroid/app/FragmentManager;)V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mListener:Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment$Listener;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mOffset:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    return-void
.end method
