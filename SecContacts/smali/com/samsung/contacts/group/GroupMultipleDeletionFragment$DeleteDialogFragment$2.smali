.class Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupMultipleDeletionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

.field final synthetic val$menuAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const v6, 0x7f0e0318

    const v5, 0x7f0e01b9

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->access$500(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    const v3, 0x7f0e0378

    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$2;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$2;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$1;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$1;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->access$600(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const v3, 0x7f0e0379

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->access$500(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    const v3, 0x7f0e037a

    :goto_2
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$4;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$4;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$3;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$3;-><init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;

    #getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;->access$600(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    const v3, 0x7f0e037b

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0370
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
