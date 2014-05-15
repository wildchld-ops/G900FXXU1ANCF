.class public Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "FavoriteSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;,
        Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mAddAllTask:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mFavoritePickerEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mListener:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectedInfoHashSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I

.field private mView:Landroid/view/View;

.field private sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private threadRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    iput v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    iput-boolean v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->threadRunning:Z

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setSweepActionEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->announceItStopped()V

    return-void
.end method

.method private addContactFromSelectAll(IJ)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v1, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addSelectedContact(IJ)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->checkIfRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v1, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->onSelectedInfoChanged()V

    :cond_0
    return-void
.end method

.method private declared-synchronized announceItStopped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkIfRunning()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedContact(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized markAsItsRunning()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeContact(J)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->onSelectedInfoChanged()V

    :cond_0
    return-void
.end method

.method private removeContactFromSelectAll(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDoneButton(II)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mListener:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;->onDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mListener:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;->onSelectionChanged(II)V

    return-void

    :cond_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mListener:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private showSearchProgress(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgress:Landroid/view/View;

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

    iget-object v3, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private updateSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public addAllMember()V
    .locals 6

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int v2, v3, v4

    iget-object v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->addContactFromSelectAll(IJ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public addFavoriteContactList()V
    .locals 15

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v12}, Landroid/content/ContentValues;-><init>(I)V

    const-string v11, "starred"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v6, 0x0

    iget-object v11, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    const-wide/16 v11, 0x3c

    rem-long v11, v6, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    :try_start_0
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    const-wide/16 v6, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    :try_start_1
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method protected configureAdapter()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setEmptyListEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectionVisible(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setDataRestrictedByCallingPackage(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->setSelectedLookupKeys(Ljava/util/Collection;)V

    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01aa

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$1;-><init>(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactListAdapter;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->setDisplayPhotos(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->setQuickContactEnabled(Z)V

    return-object v0
.end method

.method protected dismissProgressDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iput-object v3, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03009d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFavoritePickerEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mEmptyTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected isSelectAllState()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->isSelectedContact(J)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFavoritePickerEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFavoritePickerEmptyView:Landroid/view/View;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mActionCode:I

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7

    const v6, 0x7f030107

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v6, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030105

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0801e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgress:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->createCustomSearchbar()V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->removeAllMember()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->addAllMember()V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v2, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->removeContact(J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->addSelectedContact(IJ)V

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

    iput v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    iget v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->onSelectedInfoChanged()V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->showSelectAllHeader(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setDoneButton(II)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "selectedInfo"

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setDoneButton(II)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->isSelectAllState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->updateSelectAll(Z)V

    return-void
.end method

.method public removeAllMember()V
    .locals 6

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mTotalCount:I

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int v2, v3, v4

    iget-object v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v4, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->removeContactFromSelectAll(J)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mActionCode:I

    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const-string v0, "selectedInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSelectedInfoHashSet:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public runAddFavoriteListThread()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->markAsItsRunning()V

    new-instance v0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;-><init>(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$1;)V

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAddAllTask:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAddAllTask:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$AddAllTaskFavoriteList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mActionCode:I

    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setonFavoritesUpdateListener(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mListener:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e0096

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e037e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mEmptyTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->mFavoritePickerEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
