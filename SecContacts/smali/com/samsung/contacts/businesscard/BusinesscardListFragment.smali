.class public Lcom/samsung/contacts/businesscard/BusinesscardListFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "BusinesscardListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;,
        Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactListAdapter;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

.field private mContext:Landroid/content/Context;

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyView:Landroid/view/View;

.field private mHasFocus:Z

.field private mIsSelectionMode:Z

.field private mIsShowDone:Z

.field mListener:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

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

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mTotalCount:I

.field mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsShowDone:Z

    iput v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mTotalCount:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setFakeQueryModeEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->updateSelectAllState(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->showSelectAllHeader(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mTotalCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->refreshSelectAllState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method private addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 3

    const v2, 0x7f030107

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 7

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f08004b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f080048

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_6

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_4
.end method

.method private refreshSelectAllState()V
    .locals 6

    const-wide/16 v0, -0x1

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->updateSelectAllState(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->updateSelectAllState(Z)V

    goto :goto_1
.end method

.method private setVisibleAccountfilterHeaderView(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0201c8

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllHeaderView:Landroid/view/View;

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public clearSearchViewFocus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 5

    const/4 v4, 0x5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01aa

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$2;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->createListAdapter()Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setDisplayPhotos(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->isEnableVoLTE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setVoLteEnabled(Z)V

    iget-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setMultiSelectionMode(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isMultiSelectModeSearchInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mCustomSearchView:Landroid/widget/SearchView;

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

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setSweepActionEnabled(Z)V

    :try_start_0
    check-cast p1, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mListener:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnLoadFinishedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEmptyView:Landroid/view/View;

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
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    :cond_0
    new-instance v1, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->createListAdapter()Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->createCustomSearchbar()V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setVisibleAccountfilterHeaderView(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->showSelectAllHeader(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchNoMatchesView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchProgressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchProgressText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e037e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v1, 0x7f0e006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsShowDone:Z

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->startActionMode(Z)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDestroy()V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->deselectAll()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->selectAll()V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->onContactSelected(IJ)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_BUSINESSCARD_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "query_string"

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sort_order"

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->getCustomSortOrder()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "curr_position"

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->startActionMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v0, p3, p4, p5}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->onContactSelected(IJ)V

    const/4 v0, 0x1

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

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setVisibleAccountfilterHeaderView(Z)V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->configureEmptyView(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->hideTwIndexScrollbar()V

    iget-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mEnabled:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    iget-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setFakeQueryModeEnabled(Z)V

    invoke-static {p1}, Lcom/samsung/contacts/util/LoaderModifier;->setFullQueryParameter(Landroid/content/Loader;)V

    invoke-virtual {p1}, Landroid/content/Loader;->forceLoad()V

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mTotalCount:I

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mListener:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;

    iget v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mTotalCount:I

    invoke-interface {v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$OnLoadFinishedListener;->onCountChanged(I)V

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    #calls: Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedIds"

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "isSelectionMode"

    iget-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isShowDone"

    iget-boolean v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsShowDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->clearSearchViewFocus()V

    :cond_0
    return-void
.end method

.method public reOrder(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setBusinesscardSortOrder(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->setQueryString(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->reloadData()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    const-string v0, "selectedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    const-string v0, "isSelectionMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    const-string v0, "isShowDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsShowDone:Z

    goto :goto_0
.end method

.method public setBusinesscardSortOrder(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->setCustomSortOrder(I)V

    return-void
.end method

.method public startActionMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;-><init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;Lcom/samsung/contacts/businesscard/BusinesscardListFragment$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsShowDone:Z

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->setIsShowDone(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mIsSelectionMode:Z

    return-void
.end method

.method protected startLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0
.end method
