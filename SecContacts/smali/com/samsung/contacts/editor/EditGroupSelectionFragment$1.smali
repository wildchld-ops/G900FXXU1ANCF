.class Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;
.super Ljava/lang/Object;
.source "EditGroupSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->access$000(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "com.osp.app.signin"

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->access$100(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->access$200(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->access$100(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionFragment;

    #getter for: Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->access$000(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    return-void
.end method
