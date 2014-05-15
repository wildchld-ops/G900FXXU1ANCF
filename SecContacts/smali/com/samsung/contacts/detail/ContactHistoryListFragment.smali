.class public Lcom/samsung/contacts/detail/ContactHistoryListFragment;
.super Landroid/app/Fragment;
.source "ContactHistoryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;,
        Lcom/samsung/contacts/detail/ContactHistoryListFragment$UpdateTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/contacts/detail/ContactHistoryDialogFragment$Listener;"
    }
.end annotation


# static fields
.field private static final LOGS_PROJECTION:[Ljava/lang/String;

.field static mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mContextInfoMessageId:Ljava/lang/String;

.field private mContextualDeleteId:I

.field private mEmptyView:Landroid/view/View;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mIsCallType:Z

.field private mIsDeleteMode:Z

.field public mIsLoadingProgress:Z

.field private mIsRecreatedInstance:Z

.field private mIsSelectAllChecked:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLookupUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRawContactIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOptions:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method private clearSelectedLogs()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTypeSelection()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0x190

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "100, 500, 800, 900, 1000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "logtype"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    return-object v3

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-nez v4, :cond_a

    :cond_9
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_c

    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/16 v4, 0x12c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v1, :cond_d

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v9

    if-nez v4, :cond_f

    :cond_d
    if-nez v1, :cond_e

    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-nez v4, :cond_f

    :cond_e
    if-nez v1, :cond_11

    if-nez v0, :cond_11

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_11

    :cond_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz v1, :cond_12

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-nez v4, :cond_14

    :cond_12
    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v9

    if-nez v4, :cond_14

    :cond_13
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_3

    :cond_14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const/16 v4, 0x2bc

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logtype in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private makeDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 3

    const v0, 0x7f030049

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$1;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7
.end method

.method private refreshSelectAllCheckedState()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private setAllItemChecked(Z)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryView;->getViewType()I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v4, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getChechBox(I)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_2
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    iget-object v5, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setSelectedList(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/samsung/contacts/detail/ContactHistoryActivity;

    invoke-virtual {v4, p1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setIsItemSelected(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public doDeleteAction()V
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v6, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    :goto_0
    iget-object v6, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v6, v4}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->getLogType()I

    move-result v3

    const/16 v6, 0x64

    if-eq v3, v6, :cond_1

    const/16 v6, 0x1f4

    if-eq v3, v6, :cond_1

    const/16 v6, 0x320

    if-eq v3, v6, :cond_1

    const/16 v6, 0x3e8

    if-ne v3, v6, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    sget-object v6, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter$HistoryItemView;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "showDialog"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :goto_2
    return-void

    :cond_5
    new-instance v6, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;

    iget-object v7, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Landroid/content/Context;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/ArrayList;

    sget-object v8, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public getAdapter()Lcom/samsung/contacts/detail/ContactHistoryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    return-object v0
.end method

.method getRawContactSelection()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mRawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, " or raw_contact_id in ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mRawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mRawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mRawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSortOptions()[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 15

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "showDialog"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    sget-object v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    :goto_1
    sget-object v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    if-eqz v0, :cond_2

    if-nez v14, :cond_2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :pswitch_1
    const-wide/16 v12, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "null"

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    :cond_4
    const-wide/16 v6, 0x0

    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    :try_start_0
    const-string v10, "_id"

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "accountKey"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    if-eqz v8, :cond_5

    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v11, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.android.email.intent.action.REPLY"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_4
    const-string v0, "message_id"

    invoke-virtual {v11, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "account_id"

    invoke-virtual {v11, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsRecreatedInstance:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsRecreatedInstance:Z

    if-eqz v0, :cond_1

    const-string v0, "DeleteStringArrayList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    const-string v0, "selectedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    const-string v0, "selectAllChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsSelectAllChecked:Z

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "contactUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mRawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$UpdateTask;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$UpdateTask;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsSelectAllChecked:Z

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x320

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    :cond_2
    iput-boolean v5, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    :goto_1
    const v2, 0x7f0e0039

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    const v2, 0x7f0e02f6

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f0e02f5

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-object v5

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContactId:J

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mRawContactIdsList:Ljava/util/ArrayList;

    const-string v0, "( contactid  = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getRawContactSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getTypeSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "date DESC LIMIT 2500"

    :cond_1
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->makeDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030048

    invoke-direct {v1, v2, v3}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v1, p0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setFragment(Lcom/samsung/contacts/detail/ContactHistoryListFragment;)V

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setSelectedList(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public onDeleteItem()V
    .locals 4

    new-instance v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;-><init>(Lcom/samsung/contacts/detail/ContactHistoryListFragment;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
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

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCount()I

    move-result v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v1, v0, :cond_2

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsRecreatedInstance:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v2, p2}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setDateFormat()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DeleteStringArrayList"

    sget-object v1, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectedIds"

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectAllChecked"

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method restartLoading()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method setCheckPosition(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getChechBox(I)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->refreshSelectAllCheckedState()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/samsung/contacts/detail/ContactHistoryActivity;

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setIsItemSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method setMode(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mIsSelectAllChecked:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->setMode(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->clearSelectedLogs()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setIsItemSelected(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public updateSharedPrefs()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    :goto_0
    return-void

    :cond_0
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_message"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v8

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    new-array v2, v8, [Z

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_message"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    goto :goto_0

    :cond_3
    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto/16 :goto_0
.end method
