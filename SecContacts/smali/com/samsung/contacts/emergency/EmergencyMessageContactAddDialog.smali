.class public final Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;
.super Landroid/app/DialogFragment;
.source "EmergencyMessageContactAddDialog.java"


# instance fields
.field private mContactsCount:I

.field private mMaxContactsNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;II)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-direct {v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->setMaxContactsNumber(I)V

    invoke-virtual {v0, p2}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->setContactsCount(I)V

    const-string v1, "EmergencyMessageContactAddDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "EmergencyMessageContactAddDialog"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    const-string v3, "MaxContactsNumber"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    const-string v3, "ContactsCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e005b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e039c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v1, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog$1;-><init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e039f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "MaxContactsNumber"

    iget v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ContactsCount"

    iget v1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setContactsCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    return-void
.end method

.method public setMaxContactsNumber(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    return-void
.end method
