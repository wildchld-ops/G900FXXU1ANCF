.class Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    #getter for: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->mAccountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;
    invoke-static {v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$000(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;)Lcom/android/contacts/common/util/AccountsListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->access$100(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method
