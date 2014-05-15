.class Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectGoogleAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment$1;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;->access$000(Lcom/samsung/contacts/interactions/SelectGoogleAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method
