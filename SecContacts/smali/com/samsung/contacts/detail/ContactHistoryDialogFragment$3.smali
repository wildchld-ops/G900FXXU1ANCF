.class Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactHistoryDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;

    #getter for: Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->mChecked:Z
    invoke-static {v2}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->access$000(Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->setDoNotShowAgainDialog(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$3;->this$0:Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$Listener;

    invoke-interface {v1}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$Listener;->onDeleteItem()V

    return-void
.end method
