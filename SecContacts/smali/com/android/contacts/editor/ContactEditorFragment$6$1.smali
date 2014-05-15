.class Lcom/android/contacts/editor/ContactEditorFragment$6$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$6;Landroid/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-static {v5}, Lcom/android/contacts/util/UiClosables;->closeQuietly(Landroid/widget/ListPopupWindow;)Z

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$adapter:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v5, p3}, Lcom/android/contacts/common/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->whichSim(Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimFull(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :goto_0
    const-string v5, "vnd.sec.contact.phone"

    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mCustomAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;
    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$accountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-static {v5, v6}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v5, v6, v7, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$800(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v5, "com.osp.app.signin"

    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.contacts.editor.samsungaccountvalidationcheck"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "from"

    const-string v6, "editor"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/16 v6, 0xb

    invoke-virtual {v5, v0, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_0

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->showSimFullToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->showSimInitializingToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Lcom/android/contacts/model/RawContactDelta;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    invoke-static {v5, v6, v7, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$800(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v5, v5, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v6, v6, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$6$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$6;

    iget-object v7, v7, Lcom/android/contacts/editor/ContactEditorFragment$6;->val$currentAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-static {v5, v6, v7, v3}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto/16 :goto_1
.end method
