.class public Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;,
        Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;"
    }
.end annotation


# instance fields
.field private dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

.field protected mActionCode:I

.field private mContactIdArrayForQuerySelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUriForDirectoryEntityQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCount:I

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFocusState:Z

.field protected mHasPhoneData:Z

.field private mIsDoneButtonClicked:Z

.field private mIsFragmentShowing:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllChecked:Z

.field private mIsSelectAllRunning:Z

.field private mIsSelectAllTaskRunning:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field protected mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

.field private mProfileIdForSelectAll:Ljava/lang/String;

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllEnabled:Z

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field protected mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMaxCountDialog:Z

.field protected mSoftInputMode:I

.field private mSpeedDial:Z

.field private mTotalCount:I

.field private selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

.field private selectAllTaskVcard:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFocusState:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mHasPhoneData:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllChecked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSoftInputMode:I

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mTotalCount:I

    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "InteractionPickerContactsFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setFakeQueryModeEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->doSelectAllAction(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSelectAllCheckedVcard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllTaskRunning:Z

    return p1
.end method

.method private addContactFromSelectAll(JILandroid/net/Uri;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->makeSelectedInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSpeedDial:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v0, p3, p4, p5}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onSpeedDialSelectionAction(Landroid/net/Uri;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private configureEmptyView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x30

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSoftInputMode:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSoftInputMode()V

    return-void

    :cond_0
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSoftInputMode:I

    goto :goto_0
.end method

.method private doSelectAllAction(Z)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x0

    const-string v2, "InteractionPickerContactsFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalNumOfContacts : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CurrentSelectedItem : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mProfileIdForSelectAll:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move-object v3, v4

    move/from16 v4, v16

    :goto_0
    if-ge v4, v5, :cond_b

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v1, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v8

    int-to-long v12, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    invoke-virtual {v1, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->removeContactFromSelectAll(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v1, 0x1

    monitor-exit v9

    :goto_2
    return v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/database/StaleDataException;->printStackTrace()V

    const/4 v1, 0x1

    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v12, v13

    if-lt v2, v12, :cond_8

    sub-int v12, v5, v6

    if-lt v2, v12, :cond_5

    if-eqz v7, :cond_6

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mProfileIdForSelectAll:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    const/4 v1, 0x0

    monitor-exit v9

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_3

    sub-int v7, v5, v6

    if-gt v2, v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v7

    if-eqz v7, :cond_7

    sub-int v7, v5, v6

    if-eq v2, v7, :cond_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mProfileIdForSelectAll:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    const/4 v1, 0x1

    monitor-exit v9

    goto/16 :goto_2

    :cond_8
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    int-to-long v12, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    invoke-static {v12, v10, v11, v8, v7}, Lcom/samsung/contacts/interactions/InteractionUtils;->makeContactUriForDirectoryEntityQuery(Ljava/util/List;JILandroid/net/Uri;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-static {v10, v11}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mProfileIdForSelectAll:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    invoke-static {v12, v10, v11, v8, v7}, Lcom/samsung/contacts/interactions/InteractionUtils;->makeContactIdArrayForQuerySelection(Ljava/util/List;JILandroid/net/Uri;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    goto :goto_3

    :cond_b
    if-nez p1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mProfileIdForSelectAll:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    :cond_c
    const/4 v1, 0x1

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private isSelectAllState()Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getCount()I

    move-result v6

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v8, v5}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v7

    :cond_0
    :goto_2
    if-nez v7, :cond_4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v6, v9

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v4

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_3
    return v9

    :cond_5
    const/4 v9, 0x1

    goto :goto_3
.end method

.method private makeSelectedInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 5

    iget-object v0, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v3, ","

    const-string v4, "P"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, "W"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v2, 0x118

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private refreshSelectAllState()Z
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getCount()I

    move-result v5

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_6

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->isGalSearchShowMore(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    :goto_2
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v8

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_3

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v8, v7}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    const v3, 0xffff

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_2
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeVcardFromSelectAll(JI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSelectAllCheckedVcard(Z)Z
    .locals 14

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    const-wide/16 v3, -0x1

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v9, v6}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    invoke-virtual {v9, v6}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_4

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    const-wide/16 v12, 0x0

    cmp-long v9, v3, v12

    if-nez v9, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-nez p1, :cond_2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v9, v5, v12}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    return v9

    :cond_4
    :try_start_3
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v6}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getPartitionForPosition(I)I

    move-result v5

    if-nez p1, :cond_5

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->addContactFromSelectAll(JILandroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v9, v10

    goto :goto_4

    :cond_5
    :try_start_5
    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->removeVcardFromSelectAll(JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    monitor-exit v11

    move v9, v10

    goto :goto_4

    :cond_6
    monitor-exit v11

    move v9, v10

    goto :goto_4

    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9
.end method

.method private showSearchProgress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private updateSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public clearCustomSearchResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public clearFocusAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    return-void
.end method

.method public clearListViewFocus()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public clearSelectedArray()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setQueryString(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/DataQueryTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;->cancel(Z)Z

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDoneButton(II)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected configureAdapter()V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->shouldIncludeProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0
.end method

.method protected createCustomSearchbar()V
    .locals 6

    const v3, 0x7f080214

    const v1, 0x7f08002b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01aa

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$1;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "createListAdapter "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setQuickContactEnabled(Z)V

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setActionCode(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public excuteSelectAllContacts()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllChecked:Z

    :goto_0
    new-instance v1, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$1;)V

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "SelectAll Task is started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InteractionPickerContactsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSelectAllChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllChecked:Z

    goto :goto_0
.end method

.method public excuteSelectAllVcard()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    new-instance v3, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$1;)V

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskVcard:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskVcard:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskVcard;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/samsung/contacts/interactions/InteractionContactDatas;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, " === inflateView() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mEmptyTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected isMaxAdded()Z
    .locals 3

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "InteractionPickerContactsFragment"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6

    const v5, 0x7f030107

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v5, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030105

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgress:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v2, 0x7f0802a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->createCustomSearchbar()V

    return-void
.end method

.method public onDataChosen(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "InteractionPickerContactsFragment"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;->cancel(Z)Z

    move-result v0

    const-string v1, "InteractionPickerContactsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$SelectAllTaskContacts;

    :cond_2
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDestroy()V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->excuteSelectAllVcard()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->excuteSelectAllContacts()V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid or unhandled action code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v4, p1, v3, v6}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v7}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectedContact(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->removeContact(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4, p1, v3, v6}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->pickContact(Landroid/net/Uri;IIZ)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x118 -> :sswitch_3
        0x126 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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

    const/4 v7, -0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    if-ne v2, v7, :cond_2

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->startLoading()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v4, "InteractionPickerContactsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadFinished data count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v2, p2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mTotalCount:I

    :cond_4
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mTotalCount:I

    if-lez v4, :cond_a

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectAllState()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDoneButton(II)V

    :cond_5
    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsRecreatedInstance:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFakeQueryModeEnabled:Z

    if-nez v4, :cond_7

    if-eqz p2, :cond_6

    const-string v4, "InteractionPickerContactsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "excuteSelectAllContacts is started in onLoadFinished "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->excuteSelectAllContacts()V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    if-nez v3, :cond_c

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto :goto_1

    :cond_9
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mTotalCount:I

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    :goto_2
    goto :goto_1

    :cond_b
    move v0, v3

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->startLoading()V

    goto/16 :goto_0

    :cond_d
    iput v3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-boolean v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setFakeQueryModeEnabled(Z)V

    invoke-static {p1}, Lcom/samsung/contacts/util/LoaderModifier;->setFullQueryParameter(Landroid/content/Loader;)V

    invoke-virtual {p1}, Landroid/content/Loader;->forceLoad()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onMultiInfoSelectionAction(Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onMultiVcardSelectionAction(Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_1
        0xfa -> :sswitch_1
        0x118 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onMultiVcardSelectionAction(Ljava/util/HashMap;)V

    return-void
.end method

.method public declared-synchronized onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V
    .locals 8

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    iget-boolean v6, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSpeedDial:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/contacts/interactions/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZIZ)V

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    iget v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    if-eq v1, v7, :cond_1

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_4

    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isMaxAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p4, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getSelectedContactName(Lcom/samsung/contacts/interactions/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSpeedDial:Z

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/samsung/contacts/interactions/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e038e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_0
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_0
        0xfa -> :sswitch_0
        0x118 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "msg_dialog"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "SelectAllEnabled"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "IsSelectAllTaskRunning"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "IsSelectAllChecked"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 3

    const-string v0, "InteractionPickerContactsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectAll Task is finished : count => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPickerResult()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactListAdapter;->setSelctedContactHashMap(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mTotalCount:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSelectAllState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setDoneButton(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mTotalCount:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    goto :goto_1
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v0, p1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onSingleSelectionAction(Landroid/net/Uri;)V

    return-void
.end method

.method public pickContact(Landroid/net/Uri;IIZ)V
    .locals 4

    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "pickContact "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/interactions/DataQueryTask;

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    invoke-direct {v1, p0, v2, p4, p2}, Lcom/samsung/contacts/interactions/DataQueryTask;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;IZI)V

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected removeContact(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    const-string v0, "from_speed_dial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSpeedDial:Z

    const-string v0, "msg_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const-string v0, "SelectAllEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCustomSearchQueryString:Ljava/lang/String;

    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFocusState:Z

    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    const-string v0, "IsSelectAllTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllTaskRunning:Z

    const-string v0, "IsSelectAllChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSelectAllChecked:Z

    goto :goto_0
.end method

.method protected setDoneButton(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->refreshSelectAllState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->updateSelectAll(Z)V

    :cond_1
    return-void

    :cond_2
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    return-void
.end method

.method public setMMSinformation(III)V
    .locals 2

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    iput p2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    iput p3, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSelectAllEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    return-void
.end method

.method public setSelectAllEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSelectAllEnabled:Z

    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsSendingMSG:Z

    return-void
.end method

.method public setSoftInputMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mIsFragmentShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSoftInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSoftInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setSpeedDial(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSpeedDial:Z

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mUserProfileExists:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showSelectAllHeader(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showSearchProgress(Z)V

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showSelectAllHeader(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showSearchProgress(Z)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showSelectAllHeader(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v2, 0x7f0e037e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->configureEmptyView(Z)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showSelectAllHeader(Z)V

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mEmptyTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method protected showMaxCountAlertDialog(Z)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mActionCode:I

    const/16 v1, 0x126

    if-ne v0, v1, :cond_3

    :cond_1
    const v0, 0x7f0e001a

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mLimitedCount:I

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mCurrentCount:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment$2;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    iput-boolean v6, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0019

    goto :goto_1

    :cond_4
    const v0, 0x7f0e001b

    goto :goto_1
.end method

.method protected showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->mSearchProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
