.class public Lcom/android/contacts/util/StreamItemPhotoEntry;
.super Ljava/lang/Object;
.source "StreamItemPhotoEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/util/StreamItemPhotoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFileSize:I

.field private final mHeight:I

.field private final mId:J

.field private final mPhotoFileId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mSortIndex:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    const-string v0, "sort_index"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    const-string v0, "photo_file_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mPhotoFileId:J

    const-string v0, "photo_uri"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mPhotoUri:Ljava/lang/String;

    const-string v0, "height"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mHeight:I

    const-string v0, "width"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mWidth:I

    const-string v0, "filesize"

    invoke-static {p1, v0, v2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mFileSize:I

    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/util/StreamItemPhotoEntry;)I
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    iget v4, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v1, :cond_0

    iget-wide v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    iget-wide v5, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    iget-wide v5, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v3, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ne v3, v1, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    iget v4, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-eq v3, v4, :cond_0

    iget v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    iget v3, p1, Lcom/android/contacts/util/StreamItemPhotoEntry;->mSortIndex:I

    if-ge v0, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-virtual {p0, p1}, Lcom/android/contacts/util/StreamItemPhotoEntry;->compareTo(Lcom/android/contacts/util/StreamItemPhotoEntry;)I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/StreamItemPhotoEntry;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method
