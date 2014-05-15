.class Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->mContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->access$000(Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;

    #getter for: Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->mShouldShowWarningToast:Z
    invoke-static {v3}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->access$100(Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->start(Landroid/app/Activity;Ljava/util/ArrayList;Z)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment$Listener;->onDeleteFinish()V

    return-void
.end method
