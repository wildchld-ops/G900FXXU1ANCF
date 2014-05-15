.class public Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;
.super Lcom/samsung/contacts/group/GroupMemberSelectionFragment;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;
    }
.end annotation


# instance fields
.field private dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

.field private mActionCode:I

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

.field private mFocusState:Z

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mIsFromEmergencyMessage:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllChecked:Z

.field private mIsSelectAllRunning:Z

.field private mIsSelectAllTaskRunning:Z

.field private mIsSendingMSG:Z

.field private mLimitedCount:I

.field private mListener:Lcom/samsung/contacts/listener/InteractionCommonPickerListener;

.field private mMode:I

.field private mSelectedContactHashMap:Ljava/util/HashMap;
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

.field private mShowMaxCountDialog:Z

.field private mTotalCount:I

.field private selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mFocusState:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    iput v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mTotalCount:I

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setFakeQueryModeEnabled(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDoneButton(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->doSelectAllAction(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    return-void
.end method

.method private addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method private addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->makeSelectedInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private doSelectAllAction(Z)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v11

    check-cast v11, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;

    const-wide/16 v13, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v11}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v19

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    const/4 v15, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    if-eqz v20, :cond_2

    if-eqz v15, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_2
    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v2, 0x1

    monitor-exit v21

    :goto_2
    return v2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Landroid/database/StaleDataException;->printStackTrace()V

    const/4 v2, 0x1

    monitor-exit v21

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_3
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v16

    if-eqz p1, :cond_4

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lt v10, v2, :cond_8

    sub-int v2, v19, v18

    if-lt v10, v2, :cond_5

    if-eqz v20, :cond_6

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    const/4 v2, 0x0

    monitor-exit v21

    goto :goto_2

    :cond_6
    if-eqz v20, :cond_2

    sub-int v2, v19, v18

    if-gt v10, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_7

    sub-int v2, v19, v18

    if-eq v10, v2, :cond_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    const/4 v2, 0x1

    monitor-exit v21

    goto/16 :goto_2

    :cond_8
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v2, v13, v14, v0, v1}, Lcom/samsung/contacts/interactions/InteractionUtils;->makeContactIdArrayForQuerySelection(Ljava/util/List;JILandroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    :cond_a
    const/4 v2, 0x1

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private isMaxAdded()Z
    .locals 3

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectAllState()Z
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v5

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    :cond_0
    if-nez v6, :cond_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_2
    return v7

    :cond_4
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private isSelectedContact(Ljava/lang/String;I)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private makeSelectedInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 8

    iget-object v1, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v6, ","

    const-string v7, "P"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v7, "W"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private refreshSelectAllState()Z
    .locals 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getCount()I

    move-result v7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->isGalSearchShowMore(I)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v4, 0x1

    :cond_2
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v6}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v5

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v4, :cond_3

    iget-object v11, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_0

    :cond_5
    iget v11, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    const v12, 0xffff

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    iget v12, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v13, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v12, v13

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_0

    move v9, v10

    goto :goto_0

    :cond_6
    move v9, v10

    goto :goto_0
.end method

.method private removeContact(Ljava/lang/String;I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method private removeContactFromSelectAll(Ljava/lang/String;I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private setDoneButton(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionCommonPickerListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/contacts/listener/InteractionCommonPickerListener;->onInteractionSelectionChanged(II)V

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->refreshSelectAllState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->updateSelectAll(Z)V

    return-void
.end method

.method private showMaxCountAlertDialog(Z)V
    .locals 10

    const v9, 0x104000a

    const/4 v8, 0x0

    const/4 v7, 0x1

    move v1, p1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSendingMSG()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_0
    iput-boolean v7, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    const v0, 0x7f0e0019

    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$2;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Z)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const v0, 0x7f0e001b

    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->configureAdapter()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDataRestrictedByCallingPackage(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setQuickContactEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setActionCode(I)V

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mMode:I

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setMode(I)V

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setIsFromEmergencyMessage(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setMultiSelectionMode(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->setSelectedContactIds(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getMode()I

    move-result v1

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v3, 0x122

    if-eq v2, v3, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    :cond_1
    return-object v0
.end method

.method public excuteSelectAllContacts()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllChecked:Z

    :goto_0
    new-instance v1, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$1;)V

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, "SelectAll Task is started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllChecked:Z

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/samsung/contacts/interactions/InteractionContactDatas;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getContactNameDisplayOrder()I

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

.method public isSendingMSG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataChosen(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->cancel(Z)Z

    move-result v0

    const-string v1, "InteractionGroupMemberPickerFragment"

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

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;

    :cond_2
    invoke-super {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onDestroy()V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts()V

    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v1, p3, v6

    if-ltz v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberSelectListAdapter;->getPartitionForPosition(I)I

    move-result v4

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    sparse-switch v6, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid or unhandled action code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, p2, Lcom/android/contacts/common/list/ContactListItemView;

    if-eqz v6, :cond_0

    move-object v6, p2

    check-cast v6, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListItemView;->isCheckBoxVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    check-cast p2, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p2}, Lcom/android/contacts/common/list/ContactListItemView;->getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    invoke-virtual {v2, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v5, v1, v4, v7}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IIZ)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v8}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6, v1, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->addSelectedContact(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v8}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6, v1, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemChecked(IZ)V

    goto :goto_1

    :sswitch_2
    iget-boolean v6, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    if-eqz v6, :cond_8

    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v3, v4}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->removeContact(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isMaxAdded()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0, v5, v1, v4, v7}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IIZ)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v8}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v5, v1, v4, v7}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->pickContact(Landroid/net/Uri;IIZ)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_1
        0xf0 -> :sswitch_1
        0x122 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    invoke-super {p0, p1, p2}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsRecreatedInstance:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->excuteSelectAllContacts()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mTotalCount:I

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mTotalCount:I

    if-lez v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectAllState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDoneButton(II)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mTotalCount:I

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_1
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionCommonPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionCommonPickerListener;->onMultiInfoSelectionAction(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public declared-synchronized onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v1, "InteractionGroupMemberPickerFragment"

    const-string v2, " === onQueryCompleted === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    const/16 v2, 0x122

    if-ne v1, v2, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getSelectedContactName(Lcom/samsung/contacts/interactions/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/samsung/contacts/interactions/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e038e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "searchFocusState"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mFocusState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "IsSelectAllChecked"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "sendMessageForATT"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "selectIds"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectedContactIds"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->onPickerResult()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mTotalCount:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->isSelectAllState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDoneButton(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mTotalCount:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDoneButton(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->setDoneButton(II)V

    goto :goto_0
.end method

.method public pickContact(Landroid/net/Uri;IIZ)V
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/interactions/DataQueryTask;

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    invoke-direct {v1, p0, v2, p4, p2}, Lcom/samsung/contacts/interactions/DataQueryTask;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;IZI)V

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/DataQueryTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/contacts/group/GroupMemberSelectionFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "selectIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    const-string v0, "searchFocusState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mFocusState:Z

    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z

    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "IsSelectAllChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSelectAllChecked:Z

    :cond_1
    const-string v0, "sendMessageForATT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    const-string v0, "selectedContactIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mSelectedContactIds:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFromEmergencyMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsFromEmergencyMessage:Z

    return-void
.end method

.method public setGroupInfo(Lcom/samsung/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    return-void
.end method

.method public setInteractionGroupMemberSelectionUpdateListener(Lcom/samsung/contacts/listener/InteractionCommonPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionCommonPickerListener;

    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mActionCode:I

    iput p2, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mLimitedCount:I

    iput p3, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mCurrentCount:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mMode:I

    return-void
.end method

.method public setSendingMSG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupMemberPickerFragment;->mIsSendingMSG:Z

    return-void
.end method

.method protected updateDoneButton(II)V
    .locals 0

    return-void
.end method
