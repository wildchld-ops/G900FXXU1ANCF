.class public Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeleteEmergencyContactsConfirmDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeleteIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelectAllChecked:Z

.field private mListener:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->removeEmergencyMessages()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    return-object v0
.end method

.method private removeEmergencyMessages()V
    .locals 8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v6, "content://com.android.contacts/emergency"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;",
            "Z)V"
        }
    .end annotation

    new-instance v1, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    invoke-direct {v1, p1}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;-><init>(Ljava/util/ArrayList;)V

    :try_start_0
    invoke-virtual {v1, p2}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->setListener(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;)V

    invoke-virtual {v1, p3}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->setSelectAllChecked(Z)V

    const-string v2, "DeleteEmergencyContactsConfirmDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    const-string v4, "deleteIds"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    const-string v4, "isSelectAllChecked"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-le v0, v7, :cond_2

    const v4, 0x7f0e0397

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-boolean v4, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0e0399

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-boolean v4, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0e0398

    :goto_3
    new-instance v6, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;-><init>(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const v4, 0x7f0e0396

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-ne v0, v7, :cond_4

    const v4, 0x7f0e039a

    :goto_4
    invoke-virtual {p0, v4}, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const v4, 0x7f0e039b

    goto :goto_4

    :cond_5
    const v4, 0x7f0e030c

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "deleteIds"

    iget-object v1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "isSelectAllChecked"

    iget-boolean v1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    return-void
.end method

.method public setSelectAllChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    return-void
.end method
