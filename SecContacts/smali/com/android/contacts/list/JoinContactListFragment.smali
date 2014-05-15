.class public Lcom/android/contacts/list/JoinContactListFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;,
        Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;,
        Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/JoinContactListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TARGET_CONTACT_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDisplayName:Ljava/lang/String;

.field private mHasSuggestionList:Z

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsDone:Z

.field private mJoinedCount:I

.field private mListener:Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;

.field private final mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoConnectionLayout:Landroid/view/View;

.field private mPhotoSetter:Lcom/samsung/contacts/detail/JoinContactImageSetter;

.field private mSelectedHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionCursor:Landroid/database/Cursor;

.field private mTargetContactId:J

.field private mTotalJoinedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/JoinContactListFragment;->TARGET_CONTACT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    iput v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    iput-boolean v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mIsDone:Z

    new-instance v0, Lcom/android/contacts/list/JoinContactListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/JoinContactListFragment$1;-><init>(Lcom/android/contacts/list/JoinContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setQuickContactEnabled(Z)V

    new-instance v0, Lcom/samsung/contacts/detail/JoinContactImageSetter;

    invoke-direct {v0}, Lcom/samsung/contacts/detail/JoinContactImageSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoSetter:Lcom/samsung/contacts/detail/JoinContactImageSetter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/JoinContactListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    return-wide v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/JoinContactListFragment;->TARGET_CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/JoinContactListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mIsDone:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/JoinContactListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mHasSuggestionList:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method private addContactPhoto(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactListView(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    return-void
.end method

.method private isCursorValid()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mHasSuggestionList:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    if-nez v4, :cond_1

    move v0, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->isSearchMode()Z

    move-result v1

    iget-object v4, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;

    invoke-interface {v4, v0, v1}, Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;->onListUpdated(ZZ)V

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->removeContactPhoto(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    :goto_2
    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0, v5, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->addContactPhoto(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/JoinContactListAdapter;->setSuggestedCount(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method private removeContactPhoto(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private setTargetContactConnectionLayout(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/list/JoinContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/list/JoinContactListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v4, 0x7f0800fd

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/ExpandableHeightGridView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/samsung/contacts/detail/ExpandableHeightGridView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    new-instance v4, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;

    invoke-direct {v4, p0, v0, p3}, Lcom/android/contacts/list/JoinContactListFragment$AccountImageAdapter;-><init>(Lcom/android/contacts/list/JoinContactListFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Lcom/samsung/contacts/detail/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/contacts/detail/ExpandableHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method private setTargetContactData(Landroid/database/Cursor;)V
    .locals 29

    if-eqz p1, :cond_b

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v23, -0x1

    const-wide/16 v27, -0x1

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v4, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mJoinedCount:I

    :cond_0
    const/16 v4, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    cmp-long v4, v27, v23

    if-eqz v4, :cond_1

    move-wide/from16 v23, v27

    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-gtz v4, :cond_2

    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v8, :cond_4

    array-length v4, v8

    if-nez v4, :cond_5

    :cond_4
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    :cond_5
    const-string v4, "vnd.android.cursor.item/organization"

    const/4 v10, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mJoinedCount:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/JoinContactListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0300d0

    const/4 v11, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v4, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    :cond_9
    const/4 v9, 0x0

    if-nez v5, :cond_a

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-gtz v4, :cond_c

    const/4 v9, 0x1

    :cond_a
    :goto_0
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactPhotoLayout(Ljava/lang/String;J[BZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v10, 0x7f080052

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/samsung/contacts/widget/StrokeTextView;

    move-object/from16 v10, p0

    move v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactDisplayName(Lcom/samsung/contacts/widget/StrokeTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v10, 0x7f080053

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/samsung/contacts/widget/StrokeTextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v10, 0x7f080231

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v15, p0

    move/from16 v19, v9

    invoke-direct/range {v15 .. v20}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactOrganization(Lcom/samsung/contacts/widget/StrokeTextView;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v10, 0x7f0800fa

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactConnectionLayout(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactListView(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    :cond_b
    return-void

    :cond_c
    if-nez v8, :cond_a

    const/4 v9, 0x1

    goto :goto_0
.end method

.method private setTargetContactDisplayName(Lcom/samsung/contacts/widget/StrokeTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/samsung/contacts/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setTargetContactListView(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private setTargetContactOrganization(Lcom/samsung/contacts/widget/StrokeTextView;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Lcom/samsung/contacts/widget/StrokeTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    const v1, 0x7f0e00b0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p5, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/samsung/contacts/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setTargetContactPhotoLayout(Ljava/lang/String;J[BZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoSetter:Lcom/samsung/contacts/detail/JoinContactImageSetter;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/contacts/detail/JoinContactImageSetter;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;J[BLandroid/widget/ImageView;J)V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v1, 0x7f08022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mPhotoConnectionLayout:Landroid/view/View;

    const v1, 0x7f080230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    :cond_0
    if-eqz p5, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListAdapter;->setTargetContactId(J)V

    return-void
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->setSelectedContactsUri(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSelectedContactUris()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isDone(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mIsDone:Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDestroy()V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 7

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/JoinContactListFragment;->isCursorValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v2, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getLinkedContactCount(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    add-int/2addr v2, v1

    if-le v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0382

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/list/JoinContactListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v2, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v2, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast v2, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;->onSelectionUpdated(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "displayName"

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "selectedHashMap"

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "total_joined_count"

    iget v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    const-string v0, "selectedHashMap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mSelectedHashMap:Ljava/util/HashMap;

    const-string v0, "total_joined_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTotalJoinedCount:I

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/JoinContactListFragment$ListOrSelectionUpdatedListener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListFragment;->setSearchMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTargetContactId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    return-void
.end method

.method protected startLoading()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method
