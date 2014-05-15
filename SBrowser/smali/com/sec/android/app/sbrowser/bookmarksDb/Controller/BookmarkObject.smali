.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
.super Ljava/lang/Object;
.source "BookmarkObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDate:Ljava/util/Date;

.field private final mEditable:Z

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mId:J

.field private mIsChecked:Z

.field private mIsFaviconRequested:Z

.field private mIsThumbnailRequested:Z

.field private mNoOfChildren:I

.field private mNoOfspaces:I

.field private final mOperatorBookmark:Z

.field private mOrderPosition:I

.field private mParentId:J

.field private mParentName:Ljava/lang/String;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/String;

.field private mType:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOrderPosition:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfspaces:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfChildren:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsThumbnailRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsFaviconRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsChecked:Z

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mType:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mEditable:Z

    iput-boolean p10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOperatorBookmark:Z

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentId:J

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOrderPosition:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfspaces:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfChildren:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsThumbnailRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsFaviconRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsChecked:Z

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mType:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mEditable:Z

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOperatorBookmark:Z

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentId:J

    return-void
.end method

.method public static create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 11

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;-><init>(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public static create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 10

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;-><init>(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)V

    return-object v0
.end method

.method private writeBookmarkObjectContents(Landroid/os/Parcel;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentId:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mType:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOrderPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOperatorBookmark:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mEditable:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfspaces:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfChildren:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public clearThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsThumbnailRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public clearThumbnailRequested()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsThumbnailRequested:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public editable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mEditable:Z

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNoOfChildren()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfChildren:I

    return v0
.end method

.method public getOrderPositon()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOrderPosition:I

    return v0
.end method

.method public getSpacingValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfspaces:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mId:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsChecked:Z

    return v0
.end method

.method public isContainChilderen()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfChildren:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaviconAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaviconRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsFaviconRequested:Z

    return v0
.end method

.method public isOperatorBookmark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOperatorBookmark:Z

    return v0
.end method

.method public isThumbnailAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsThumbnailRequested:Z

    return v0
.end method

.method public parentId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentId:J

    return-wide v0
.end method

.method public parentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentName:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsChecked:Z

    return-void
.end method

.method public setFavicon([B)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;

    const-string v1, "ShowBookmarks"

    const-string v2, "OutOfMemoryError happened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mFavicon:Landroid/graphics/Bitmap;

    const-string v1, "ShowBookmarks"

    const-string v2, "OutOfMemoryError while decoding byte Array in ShowBookmarkFileds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFaviconRequested()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsFaviconRequested:Z

    return-void
.end method

.method public setNoOfChildren(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfChildren:I

    return-void
.end method

.method public setOrderPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mOrderPosition:I

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mParentName:Ljava/lang/String;

    return-void
.end method

.method public setSpacingValue(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mNoOfspaces:I

    return-void
.end method

.method public setThumbnailBlob([B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mIsThumbnailRequested:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    const-string v1, "ShowBookmarks"

    const-string v2, "OutOfMemoryError happened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mThumbnail:Landroid/graphics/Bitmap;

    const-string v1, "ShowBookmarks"

    const-string v2, "OutOfMemoryError while decoding byte Array in ShowBookmarkFileds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mType:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->writeBookmarkObjectContents(Landroid/os/Parcel;)V

    return-void
.end method
