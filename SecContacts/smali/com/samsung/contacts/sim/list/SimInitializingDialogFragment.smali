.class public Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimInitializingDialogFragment.java"


# instance fields
.field public mTitleStringResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;I)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;-><init>()V

    iput p1, v0, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;->mTitleStringResId:I

    const-string v1, "SimInitializingDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance v2, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment$1;-><init>(Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/list/ListSimManager;->getSimInitString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/samsung/contacts/sim/list/SimInitializingDialogFragment;->mTitleStringResId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
