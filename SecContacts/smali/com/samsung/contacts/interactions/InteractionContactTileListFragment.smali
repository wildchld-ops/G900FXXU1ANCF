.class public Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;
.super Lcom/android/contacts/list/ContactTileListFragment;
.source "InteractionContactTileListFragment.java"

# interfaces
.implements Lcom/samsung/contacts/interactions/DataBrowseDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;,
        Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;
    }
.end annotation


# static fields
.field private static mColumnCount:I


# instance fields
.field private dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

.field protected mActionCode:I

.field private mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mCheckStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field final mInteractionContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFragmentShowing:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllChecked:Z

.field private mIsSelectAllRunning:Z

.field private mIsSelectAllTaskRunning:Z

.field private mLimitedCount:I

.field protected mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mSelectAllTextView:Landroid/widget/TextView;

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

.field private mShowMaxCountDialog:Z

.field private mTWJoinListView:Z

.field private selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

.field private showMaxDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mColumnCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllRunning:Z

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$2;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mInteractionContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$3;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$5;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsRecreatedInstance:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->doSelectAllAction(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mShowMaxCountDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mEmptyTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mTileEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showSelectAllHeader(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method private addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;I)V
    .locals 6

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

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->makeSelectedInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v3, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4, p3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->setItemChecked(Ljava/lang/Long;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->onSelectedInfoChanged()V

    goto :goto_0
.end method

.method private doSelectAllAction(Z)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v19

    const/16 v18, 0x0

    const-string v2, "InteractionContactTileListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "totalNumOfContacts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CurrentSelectedItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    const/16 v16, 0x0

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getContactId(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    const/4 v15, 0x0

    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
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

    move-result-object v11

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->removeContactFromSelectAll(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lt v10, v2, :cond_7

    sub-int v2, v19, v18

    if-lt v10, v2, :cond_5

    if-eqz v20, :cond_6

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    const/4 v2, 0x0

    monitor-exit v21

    goto :goto_2

    :cond_6
    if-eqz v20, :cond_2

    sub-int v2, v19, v18

    if-gt v10, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    const/4 v2, 0x1

    monitor-exit v21

    goto/16 :goto_2

    :cond_7
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->isSelectedContact(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v0, v16

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    move/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v2, v13, v14, v0, v1}, Lcom/samsung/contacts/interactions/InteractionUtils;->makeContactUriForDirectoryEntityQuery(Ljava/util/List;JILandroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->setItemChecked(Ljava/lang/Long;Ljava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v2, v13, v14, v0, v1}, Lcom/samsung/contacts/interactions/InteractionUtils;->makeContactIdArrayForQuerySelection(Ljava/util/List;JILandroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactIdArrayForQuerySelection:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContactUriForDirectoryEntityQuery:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/contacts/interactions/InteractionUtils;->getPhoneEmailDataByContactId(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/lang/String;III)V

    :cond_a
    const/4 v2, 0x1

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private makeSelectedInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;)Ljava/lang/String;
    .locals 9

    iget-object v1, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    const-string v7, ","

    const-string v8, "P"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const-string v8, "W"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    return-object v4
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

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->uncheckAll()V

    return-void
.end method

.method private showSelectAllHeader(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

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

.method private uncheckAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->clearAllCheckStates()V

    return-void
.end method

.method private updateSelectAllState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSelectedArray()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->updateSelectAllState(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;->cancel(Z)Z

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    iput-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllRunning:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->uncheckAll()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setDoneButton(II)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public excuteSelectAllContacts()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsRecreatedInstance:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllChecked:Z

    :goto_0
    new-instance v3, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$1;)V

    iput-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    const-string v3, "InteractionContactTileListFragment"

    const-string v4, "SelectAll Task is started"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "InteractionContactTileListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsSelectAllChecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllChecked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllChecked:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedContactName(Lcom/samsung/contacts/interactions/InteractionContactDatas;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method protected inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 4

    const v3, 0x7f030107

    const/4 v2, 0x0

    invoke-virtual {p1, p4, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mTileEmptyView:Landroid/view/View;

    const v1, 0x7f0801d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mEmptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mEmptyTitleView:Landroid/widget/TextView;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v2, 0x7f0e0099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showSelectAllHeader(Z)V

    return-object v0
.end method

.method public initStreListView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setViewType(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setSweepActionEnabled(Z)V

    return-void
.end method

.method protected isMaxAdded()Z
    .locals 3

    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSelectedContact(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

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

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->setSelectionMode(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    new-instance v3, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$1;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->setOnItemCheckedStateChangedListener(Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;)V

    return-void
.end method

.method public onCancelChosen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsRecreatedInstance:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mShowMaxCountDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxCountAlertDialog(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const v0, 0x7f030059

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDataChosen(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v5, p1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "InteractionContactTileListFragment"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    if-eqz v1, :cond_1

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;->cancel(Z)Z

    move-result v0

    const-string v1, "InteractionContactTileListFragment"

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

    iput-object v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->selectAllTaskContacts:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$SelectAllTaskContacts;

    :cond_2
    invoke-super {p0}, Lcom/android/contacts/list/ContactTileListFragment;->onDestroy()V

    return-void
.end method

.method public onPickerResult()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unhandled action code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onMultiInfoSelectionAction(Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onMultiVcardSelectionAction(Ljava/util/HashMap;)V

    goto :goto_0

    nop

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

.method public onQueryCompleted(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;

    iget v5, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/InteractionContactDatas;-><init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V

    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    iget v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mAvailableDataCount:I

    if-eq v1, v7, :cond_1

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;

    iget-object v2, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p5}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->addSelectedDataInfo(Lcom/samsung/contacts/interactions/InteractionContactDatas$DataInfo;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->isMaxAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p4, :cond_2

    invoke-virtual {p0, v7}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxCountAlertDialog(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getSelectedContactName(Lcom/samsung/contacts/interactions/InteractionContactDatas;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/contacts/interactions/InteractionContactDatas;->mUri:Landroid/net/Uri;

    move-object v2, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/contacts/interactions/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/samsung/contacts/interactions/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e038e

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_0
        0xbe -> :sswitch_0
        0xf0 -> :sswitch_0
        0xfa -> :sswitch_0
        0x126 -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedContacts"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCheckStates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "checkStates"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showMaxCountAlertDialog"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mShowMaxCountDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "IsDataQueryTaskRunning"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "IsSelectAllChecked"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->updateSelectAllState(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setDoneButton(II)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/contacts/list/ContactTileListFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mInteractionContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mColumnCount:I

    sget v0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mColumnCount:I

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->setColumnCount(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "favorite_strquent_listview_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mTWJoinListView:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->initStreListView()V

    return-void
.end method

.method public pickContact(Landroid/net/Uri;IIZ)V
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    invoke-direct {v1, p0, p0, p4, p2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;ZI)V

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->dataQueryTask:Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;

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

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$DataQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected removeContact(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "selectedContacts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    const-string v0, "checkStates"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    const-string v0, "maxRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    const-string v0, "existingRecipientCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setCheckStates(Ljava/util/ArrayList;)V

    const-string v0, "showMaxCountAlertDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mShowMaxCountDialog:Z

    const-string v0, "IsDataQueryTaskRunning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllTaskRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "IsSelectAllChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsSelectAllChecked:Z

    goto :goto_0
.end method

.method public setColumnCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setColumnCount(I)V

    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-void
.end method

.method protected setDoneButton(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsFragmentShowing:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v2, v0}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, p2, :cond_1

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v4, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->updateSelectAllState(Z)V

    :cond_3
    return-void

    :cond_4
    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v2, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method public setIsFragmentShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mIsFragmentShowing:Z

    return-void
.end method

.method public setMMSinformation(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mActionCode:I

    iput p2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iput p3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    return-void
.end method

.method protected showMaxCountAlertDialog(Z)V
    .locals 9

    const/4 v8, 0x1

    move v1, p1

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v3, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    const v0, 0x7f0e0019

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mLimitedCount:I

    iget v7, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mCurrentCount:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment$4;-><init>(Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->showMaxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_0
    iput-boolean v8, p0, Lcom/samsung/contacts/interactions/InteractionContactTileListFragment;->mShowMaxCountDialog:Z

    return-void

    :cond_1
    const v0, 0x7f0e001b

    goto :goto_0
.end method
