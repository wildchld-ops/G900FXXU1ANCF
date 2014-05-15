.class public Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Lcom/samsung/contacts/group/AddMemberDialogFragment$Listener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;,
        Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;,
        Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactListAdapter;",
        ">;",
        "Lcom/samsung/contacts/group/AddMemberDialogFragment$Listener;",
        "Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

.field private mContext:Landroid/content/Context;

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mFromEmergencyDialer:Z

.field private mGroupEmptyView:Landroid/view/View;

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsGroupEditable:Z

.field private mIsProgressShowing:Z

.field private mIsSelectionMode:Z

.field private mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mResId:I

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectedContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDefaultIceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldActionAsText:Z

.field private mStatus:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    iput v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I

    sget-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->updateSelectAllState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isActionModeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSelectAllHeader(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setAddMemberButtonVisibility(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->refreshSelectAllState()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method private addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 3

    const v2, 0x7f030107

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private isActionModeAvailable()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDialer:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeACallAndFinishActivity(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDialer:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SKTRADDialOption"

    const-string v2, "abroad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDialer:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "SKTRADDialOption"

    const-string v2, "korea"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "no phone number"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private refreshSelectAllState()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, -0x1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v7}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->updateSelectAllState(Z)V

    :goto_2
    return-void

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->updateSelectAllState(Z)V

    goto :goto_2
.end method

.method private setAddMemberButtonVisibility(Z)V
    .locals 4

    const v3, 0x7f08002b

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSearchBarVisibility(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showSearchProgress(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0202b1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private updateSelectAllState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public clearFocusSearchView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 6

    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "configureSweepActionCallbackAndListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->isEnableVoLTE()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSweepActionBarCallBack(Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;)V

    new-instance v2, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSweepActionBarCallBack:Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/samsung/contacts/sweepaction/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/samsung/contacts/sweepaction/ContactListSweepActionHandler;Lcom/android/contacts/common/list/ContactListAdapter;)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e02a0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;-><init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0e01aa

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$2;-><init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;
    .locals 2

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method public dismissProgress()V
    .locals 3

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mResId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSelectedGroupInfo()Lcom/samsung/contacts/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0300b7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupEmptyView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mEmptyTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSelectModeSearchInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/contacts/util/GroupUtils;->parseGroupType(Lcom/samsung/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    invoke-static {p1}, Lcom/samsung/contacts/util/GroupUtils;->isGroupEditable(Lcom/samsung/contacts/group/GroupInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsGroupEditable:Z

    iget v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v2, "GroupMemberBrowseListFragment"

    const-string v3, "loadGroup : LOAD ICE GROUP"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setQuickContactEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsGroupEditable:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setAddMemberButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupType:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setMode(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V

    return-void
.end method

.method public loadGroupWithReload(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/samsung/contacts/group/GroupInfo;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->reloadData()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateChosen()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "GroupMemberBrowseListFragment"

    const-string v2, "onCreateChosen return : activity is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "is_ice_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->startActionMode()V

    :cond_0
    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030105

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSelectAllHeader(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgress:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->createCustomSearchbar()V

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    :cond_3
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->selectAll()V

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    invoke-virtual {v4, v6}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->deselectAll(Z)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->access$400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;)V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->selectAll()V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    invoke-virtual {v4, v6}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->deselectAll(Z)V

    goto :goto_1
.end method

.method protected onItemClick(IJ)V
    .locals 6

    iget-boolean v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDialer:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->isDefaultIce(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->makeACallAndFinishActivity(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/contacts/ContactsUtils;->getPhoneNumberFromLookupKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->makeACallAndFinishActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    invoke-virtual {v4, p1, p2, p3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isActionModeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->startActionMode()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1, p4, p5}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->onContactSelected(IJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I

    iget-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    #calls: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->access$400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;)V

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSelectAllHeader(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onUpdateSelectMenu(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const-string v1, "isShowing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "resourId"

    iget v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "selectedContactIds"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "selectedDefaultIceIds"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "shouldActionAsText"

    iget-boolean v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUpdateChosen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onAddMemberRequested()V

    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 1

    sget-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADING:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "isShowing"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    const-string v0, "resourId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    const-string v0, "selectedContactIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    const-string v0, "selectedDefaultIceIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedDefaultIceIds:Ljava/util/ArrayList;

    const-string v0, "shouldActionAsText"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z

    goto :goto_0
.end method

.method public setEmergencyContactsInfo(ZZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDialer:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/contacts/group/GroupMemberBrowseListAdapter;->setEmergencyContactsInfo(ZZ)V

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "enable_sweep_actions"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSearchBarVisibility(Z)V

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setSweepActionEnabled(Z)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public setListener(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-void
.end method

.method public showActionAsText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mShouldActionAsText:Z

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mUserProfileExists:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;->LOADED:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mStatus:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$Status;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSearchProgress(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e0096

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v3, 0x7f0e037e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-direct {p0, v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    if-gtz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mEmptyTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mGroupEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method public showProgress(I)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsProgressShowing:Z

    iput p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mResId:I

    return-void
.end method

.method public startActionMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;-><init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->setAddMemberButtonVisibility(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mIsSelectionMode:Z

    return-void
.end method
