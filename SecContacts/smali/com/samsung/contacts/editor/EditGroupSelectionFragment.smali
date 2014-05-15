.class public Lcom/samsung/contacts/editor/EditGroupSelectionFragment;
.super Landroid/app/ListFragment;
.source "EditGroupSelectionFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;,
        Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

.field private mCheckedGroupIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mHasPhoneNumber:Z

.field private mIsContainGoogle:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;

.field private mNewGroupTitle:Ljava/lang/String;

.field private mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mNotAssignedHeaderTextView:Landroid/widget/TextView;

.field private mNotAssignedHeaderView:Landroid/view/View;

.field private mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private considerBindData()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderView:Landroid/view/View;

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0300bf

    iget-object v5, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method private getSelectedList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v4, v1}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private setCreatedGroupChecked(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setDoneButtonStatus()V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListener:Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListener:Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;

    invoke-interface {v3, v1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;->onDoneButtonStatusChange(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private uncheckAll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private updateListItems(Landroid/database/Cursor;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v7, v9

    :goto_1
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v8, v9

    :goto_2
    if-eqz v8, :cond_4

    invoke-static {v6}, Lcom/samsung/contacts/util/GroupUtils;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    iget-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    :goto_4
    iget-object v11, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v7, v10

    goto :goto_1

    :cond_3
    move v8, v10

    goto :goto_2

    :cond_4
    const-string v0, "ICE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v11, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    const v11, 0x7f0e0012

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    const v11, 0x7f0e028b

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v6

    goto :goto_3

    :cond_7
    const/4 v5, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getSelecedGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedGroupTitle()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "android.intent.extra.HAS_PHONE_NUMBER"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mHasPhoneNumber:Z

    const-string v0, "android.intent.extra.CONTACT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContactId:J

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountName:Ljava/lang/String;

    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;

    const-string v0, "com.google"

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "show_ICE"

    iget-boolean v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mHasPhoneNumber:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.HAS_PHONE_NUMBER"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mHasPhoneNumber:Z

    const-string v0, "android.intent.extra.CONTACT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContactId:J

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    const-string v0, "OriginalCheckedId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountName:Ljava/lang/String;

    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;

    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string v2, "show_ICE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/contacts/group/GroupListLoaderFactory;->createGroupSelectionLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v2, "title!=\'ICE\'"

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0300be

    :goto_0
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListView:Landroid/widget/ListView;

    const v2, 0x7f0300bf

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderView:Landroid/view/View;

    const v3, 0x7f08021e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderTextView:Landroid/widget/TextView;

    const v3, 0x7f0e0285

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderView:Landroid/view/View;

    const v3, 0x7f080139

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderTextView:Landroid/widget/TextView;

    const v4, 0x7f0b01fd

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    const v2, 0x7f08021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$1;-><init>(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    const v2, 0x7f0300bd

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p3, :cond_3

    iget-boolean v6, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->uncheckAll()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->setDoneButtonStatus()V

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    sub-int v7, p3, v1

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const v6, 0x7f080139

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->updateListItems(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->considerBindData()V

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNewGroupTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->setCreatedGroupChecked(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->setDoneButtonStatus()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android.intent.extra.HAS_PHONE_NUMBER"

    iget-boolean v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mHasPhoneNumber:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.intent.extra.CONTACT_ID"

    iget-wide v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupIdList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "OriginalCheckedId"

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mOriginalCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "account_name"

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_type"

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    iget-boolean v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mIsContainGoogle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mListener:Lcom/samsung/contacts/editor/EditGroupSelectionFragment$Listener;

    return-void
.end method

.method setNewGroupTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNewGroupTitle:Ljava/lang/String;

    return-void
.end method

.method updateGroup()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mAdapter:Lcom/samsung/contacts/editor/EditGroupSelectionAdapter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;

    iget-object v2, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mContactId:J

    iget-object v1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->mNotAssignedHeaderCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;-><init>(Lcom/samsung/contacts/editor/EditGroupSelectionFragment;Landroid/content/Context;JZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/editor/EditGroupSelectionFragment$UpdateGroupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
