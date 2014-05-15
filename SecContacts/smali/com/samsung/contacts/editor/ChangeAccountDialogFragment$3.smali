.class Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;
.super Ljava/lang/Object;
.source "ChangeAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;

    iget-object v1, p0, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment$3;->val$accountAdapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;->access$000(Lcom/samsung/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    return-void
.end method
