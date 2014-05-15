.class public Lcom/samsung/contacts/group/GroupMemberSelectionFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "GroupMemberSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;,
        Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mGroupPickerEmptyView:Landroid/view/View;

.field private mIsAutoAdd:Z

.field private mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field protected mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field protected mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSoftInputMode:I

.field private mTotalCount:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    iput v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mExceptedAccounts:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSoftInputMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->setFakeQueryModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;I)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->configureUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private configureUri(I)Landroid/net/Uri;
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/samsung/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private isSelectAllState()Z
    .locals 6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private showSearchProgress(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgress:Landroid/view/View;

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

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->isSelectAllState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->updateSelectAll(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public addAllMember()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01aa

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$1;-><init>(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setDisplayPhotos(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setQuickContactEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setSelectedContactIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setExceptedAccounts(Ljava/util/List;)V

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setMode(I)V

    iget-boolean v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->setAutoAdd(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupPickerEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mEmptyTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mMode:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;-><init>(Lcom/samsung/contacts/group/GroupMemberSelectionFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mQueryHandler:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mQueryHandler:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->runQuery()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupPickerEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupPickerEmptyView:Landroid/view/View;

    const v2, 0x7f0801d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const v6, 0x7f030107

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v6, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->showSelectAllHeader(Z)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030105

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgress:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->createCustomSearchbar()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mQueryHandler:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mQueryHandler:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$MemberQueryHandler;->cancelOperation(I)V

    :cond_0
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;->onSelectedAction(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->removeAllMember()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->updateSelectAll(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->addAllMember()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onItemClick(IJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->updateDoneButton(II)V

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->isSelectAllState()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->updateSelectAll(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->updateDoneButton(II)V

    iget v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->showSelectAllHeader(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->updateDoneButton(II)V

    return-void
.end method

.method public removeAllMember()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mTotalCount:I

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/group/GroupMemberSelectionAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public setAutoAdd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mIsAutoAdd:Z

    return-void
.end method

.method public setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mExceptedAccounts:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-void
.end method

.method public setGroupMemberSelectionUpdateListener(Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mMode:I

    return-void
.end method

.method public setModifiedMemberIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e0096

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e037e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mEmptyTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mGroupPickerEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected updateDoneButton(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;->onDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;->onSelectionChanged(II)V

    :cond_1
    return-void

    :cond_2
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mListener:Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment$onGroupMemberSelectionUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method protected updateSelectAll(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
