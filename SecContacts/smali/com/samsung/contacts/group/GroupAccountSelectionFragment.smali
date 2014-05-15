.class public Lcom/samsung/contacts/group/GroupAccountSelectionFragment;
.super Landroid/app/Fragment;
.source "GroupAccountSelectionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;,
        Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;,
        Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

.field private mContext:Landroid/content/Context;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

.field private mRootView:Landroid/view/View;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    return-object v0
.end method

.method private addAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAllAUIDAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v4, "com.kddi.ast.auoneid"

    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getAllAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v4, "vnd.sec.contact.phone"

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.google"

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private getAllDocomoAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v4, "com.android.nttdocomo"

    iget-object v5, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateDoneButtonAndSelectAll()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->getCount()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    invoke-interface {v4, v2}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;->onDoneButtonStateUpdated(Z)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5, v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;->onSelectionChanged(II)V

    :goto_1
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_3

    move v0, v2

    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    invoke-interface {v4, v3}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    invoke-interface {v4, v3, v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;->onSelectionChanged(II)V

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method public addAllAccounts()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->getAllAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->getAllDocomoAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->getAllAUIDAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->updateDoneButtonAndSelectAll()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->getAllAccounts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->getAllDocomoAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->getAllAUIDAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v1, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    const v2, 0x7f0300a3

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;-><init>(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GroupAccountSelectionFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300c0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f030107

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->updateDoneButtonAndSelectAll()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;->onAccountSelectedAction(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GroupAccountSelectionFragment"

    const-string v3, "can not work while loading."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->addAllAccounts()V

    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->updateDoneButtonAndSelectAll()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->removeAllAccounts()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p3, v2

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->removeAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->addAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_1
.end method

.method public removeAllAccounts()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->updateDoneButtonAndSelectAll()V

    return-void
.end method

.method public setGroupAccountSelectionUpdateListener(Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$onGroupAccountSelectionUpdateListener;

    return-void
.end method

.method public setSelectedAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method
