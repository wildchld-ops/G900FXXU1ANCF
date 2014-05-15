.class public Lcom/android/contacts/common/list/ContactTileAdapter;
.super Lcom/android/contacts/common/list/DefaultContactListAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckStateListener:Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field protected mColumnCount:I

.field protected mContactCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mDividerCount:I

.field private mDividerPosition:I

.field private mFrequentCount:I

.field protected mIdIndex:I

.field private mIsListView:Z

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field private final mPaddingInPixels:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mSelectionMode:Z

.field private mStaredCount:I

.field private mStarredIndex:I

.field protected mStatusIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    iput-object p2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->bindColumnIndices()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mSelectionMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/common/list/ContactTileAdapter;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/common/list/ContactTileAdapter;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getDivider(I)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f03009e

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0801e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0116

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to access cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private getLayoutResourceId()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    if-eqz v0, :cond_0

    const v0, 0x7f030058

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03005a

    goto :goto_0
.end method


# virtual methods
.method protected bindColumnIndices()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    return-void
.end method

.method public clearAllCheckStates()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    return-void
.end method

.method protected createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;
    .locals 10

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gt v8, p2, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;-><init>()V

    iget v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->contactId:J

    iget v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :goto_1
    iput-object v3, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    iget v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_2
    iput-object v7, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->lookupKey:Ljava/lang/String;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v7, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->lookupKeyUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    iput-object v1, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    :cond_5
    iput-object v6, v0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0e0113

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getCheckStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method public declared-synchronized getContactId(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 7

    move v0, p1

    iget-boolean v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v6, v5, 0x1

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/2addr v5, v6

    if-ge p1, v5, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v5, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_3
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    sub-int v0, p1, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    const-string v6, "CursorIndexOutOfBoundsException has occurred"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getCount()I
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    add-int/2addr v3, v2

    iget v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mFrequentCount:I

    if-nez v6, :cond_3

    :goto_2
    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mFrequentCount:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    add-int/2addr v0, v4

    add-int v4, v1, v0

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_4
.end method

.method public getCursorCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v3, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v5

    iget-boolean v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    if-ne v5, v4, :cond_3

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-lez v6, :cond_1

    :goto_0
    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    sub-int v5, p1, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge p1, v4, :cond_4

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    sub-int/2addr v1, v4

    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    iget v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    rem-int/2addr v4, v6

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    :goto_3
    sub-int v2, v5, v4

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    :goto_4
    sub-int v4, v1, v4

    sub-int v1, v4, v2

    sget-object v4, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contactIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emptyCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_5
    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactTileAdapter$ContactEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    iget v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    rem-int/2addr v4, v6

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_4
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-ge p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    if-nez v1, :cond_0

    :cond_4
    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    if-ge p1, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mFrequentCount:I

    if-gtz v1, :cond_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public getLookupKey(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumFrequents()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    return v0
.end method

.method public declared-synchronized getPosition(Ljava/lang/Long;)I
    .locals 6

    const/4 v5, -0x1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getRowCount(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v3, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v6, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/samsung/contacts/ContactsPerformance;->getGetViewStart(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDivider(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    move v3, v4

    :goto_1
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_2
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;ZZ)V

    sget-object v3, Lcom/android/contacts/ContactsApplication;->contactsEnter:Lcom/samsung/contacts/ContactsPerformance;

    sget-object v4, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/contacts/ContactsPerformance;->getGetViewEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharableContact(I)Z
    .locals 12

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-static {v6, v2, v4}, Lcom/android/contacts/ContactsUtils;->parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v8

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "vnd.sec.contact.phone_personal"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const-string v10, "com.skt.prod"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    :goto_1
    return v9

    :cond_3
    invoke-virtual {v8}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "preload"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public selectAllCheckStates()V
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCheckStates(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mFrequentCount:I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mFrequentCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerCount:I

    :cond_1
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStaredCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStaredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrequentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mFrequentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    goto :goto_0
.end method

.method public declared-synchronized setItemChecked(Ljava/lang/Long;Ljava/lang/String;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStateListener:Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p3}, Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;->onItemCheckedStateChanged(JZ)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setOnItemCheckedStateChangedListener(Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mCheckStateListener:Lcom/android/contacts/common/list/ContactTileAdapter$onItemCheckedStateChangedListener;

    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mSelectionMode:Z

    return-void
.end method

.method public setViewType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsListView:Z

    return-void
.end method
