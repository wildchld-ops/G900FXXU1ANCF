.class Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupAccountSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupAccountSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-eqz p2, :cond_0

    move-object v4, p2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v6, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-static {v6}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->access$100(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v6, v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->accountType:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->access$000(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "vnd.sec.contact.phone"

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->accountName:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;
    invoke-static {v6}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->access$200(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-object v4

    :cond_0
    iget-object v6, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    #getter for: Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->access$000(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x7f0300a3

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;

    invoke-direct {v5, v4}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v7, v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v6, v6, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v5, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->accountName:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
