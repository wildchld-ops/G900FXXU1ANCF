.class public Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
.super Landroid/app/DialogFragment;
.source "SplitContactConfirmationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mContactId1:J

.field private mContactId2:J

.field private mDisplayName:Ljava/lang/String;

.field private mShouldDestroyLoader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mShouldDestroyLoader:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mShouldDestroyLoader:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "contactId1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    const-string v0, "contactId2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0383

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0384

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;-><init>(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "contactId1"

    iget-wide v1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "contactId2"

    iget-wide v1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setContactId(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    iput-wide p3, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setShouldDestroyLoader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mShouldDestroyLoader:Z

    return-void
.end method
