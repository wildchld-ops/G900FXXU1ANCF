.class public Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
.super Ljava/lang/Object;
.source "ReadingListData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$1;,
        Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final SAVE_PAGE_AS_MHTML:Ljava/lang/String;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mChecked:Z

.field private mCreationDate:Ljava/util/Date;

.field private mDescription:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDirPath:Ljava/lang/String;

.field private mFavIconBlog:[B

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mId:I

.field private mImageStyle:I

.field private mIsDeleted:Z

.field private mIsDirty:Z

.field private mIsImage:Z

.field private mIsRead:Z

.field private mIsReaderItem:Z

.field private mModified:J

.field private mPath:Ljava/lang/String;

.field private mSaveAsOption:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

.field private mSync1:Ljava/lang/String;

.field private mSync2:Ljava/lang/String;

.field private mSync3:Ljava/lang/String;

.field private mSync4:Ljava/lang/String;

.field private mSync5:Ljava/lang/String;

.field private mThumbnailCachedBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailHeight:I

.field private mThumbnailRatio:I

.field private mThumbnailWidth:I

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mChecked:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailWidth:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailHeight:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailRatio:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailCachedBitmap:Landroid/graphics/Bitmap;

    const-string v0, "save-page-as-mhtml"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->SAVE_PAGE_AS_MHTML:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailHeight:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailRatio:I

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDeviceName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDeleted:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDirty:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsRead:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsImage:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mImageStyle:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync3:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync4:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_MHTML:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSaveAsOption:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    return-void
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->LOGTAG:Ljava/lang/String;

    const-string v2, "Error in compressing bitmap as it is already recycled or its null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public IsDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDeleted:Z

    return v0
.end method

.method public createReadingListValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v0

    sget v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mAccountName:Ljava/lang/String;

    sget v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_TYPE:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mAccountType:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDeviceId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync5:Ljava/lang/String;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setCreationDate(J)V

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mModified:J

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "path"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dir_path"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "description"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsReaderItem:Z

    if-eqz v3, :cond_2

    const-string v3, "favicon"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    :cond_1
    const-string v3, "url"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_name"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_type"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device_id"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device_name"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "created"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mCreationDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "modified"

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "is_deleted"

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDeleted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_dirty"

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "is_read"

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsRead:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "image_style"

    iget v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mImageStyle:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync1"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync1:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync2"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync3"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync3:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync4"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync4:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync5"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "isReadingItem"

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsReaderItem:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v2

    :cond_2
    const-string v3, "favicon"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavIconBlog:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mChecked:Z

    return v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mCreationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFavIconBlog()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavIconBlog:[B

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mId:I

    return v0
.end method

.method public getImageStyle()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mImageStyle:I

    return v0
.end method

.method public getIsImage()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsImage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIsReaderPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsReaderItem:Z

    return v0
.end method

.method public getRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsRead:Z

    return v0
.end method

.method public getReadingListData(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mId:I

    const-string v0, "path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mPath:Ljava/lang/String;

    const-string v0, "dir_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDirPath:Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mTitle:Ljava/lang/String;

    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDescription:Ljava/lang/String;

    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mUrl:Ljava/lang/String;

    const-string v0, "account_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mAccountName:Ljava/lang/String;

    const-string v0, "account_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mAccountType:Ljava/lang/String;

    const-string v0, "device_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDeviceId:Ljava/lang/String;

    const-string v0, "device_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDeviceName:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;

    const-string v3, "created"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mCreationDate:Ljava/util/Date;

    const-string v0, "modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mModified:J

    const-string v0, "is_deleted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDeleted:Z

    const-string v0, "is_dirty"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDirty:Z

    const-string v0, "is_read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsRead:Z

    const-string v0, "image_style"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mImageStyle:I

    const-string v0, "sync1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync1:Ljava/lang/String;

    const-string v0, "sync2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync2:Ljava/lang/String;

    const-string v0, "sync3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync3:Ljava/lang/String;

    const-string v0, "sync4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync4:Ljava/lang/String;

    const-string v0, "sync5"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync5:Ljava/lang/String;

    const-string v0, "isReadingItem"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsReaderItem:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public getReadingListDataForSuggestions(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mId:I

    const-string v0, "path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mPath:Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mTitle:Ljava/lang/String;

    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mUrl:Ljava/lang/String;

    const-string v0, "is_deleted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDeleted:Z

    const-string v0, "is_read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsRead:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_0

    sget v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    if-ne p1, v4, :cond_1

    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSamsungAccount caused exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSaveAsOption()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSaveAsOption:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    return-object v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailCachedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCachedThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailCachedBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mChecked:Z

    return-void
.end method

.method public setCreationDate(J)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mCreationDate:Ljava/util/Date;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDirPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mDirPath:Ljava/lang/String;

    return-void
.end method

.method public setDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsDirty:Z

    return-void
.end method

.method public setFavIconBlog([B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavIconBlog:[B

    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailRatio:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailHeight:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailRatio:I

    mul-int/2addr v5, v6

    invoke-static {p1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mFavicon:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to setFavicon for the saved page : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to setFavicon for the saved page : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setImageStyle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mImageStyle:I

    return-void
.end method

.method public setIsImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsImage:Z

    return-void
.end method

.method public setIsReaderPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsReaderItem:Z

    return-void
.end method

.method public setModified(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mModified:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mIsRead:Z

    return-void
.end method

.method public setSaveAsOption(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$1;->$SwitchMap$com$sec$android$app$sbrowser$readinglist$model$ReadingListData$SaveAsOption:[I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->LOGTAG:Ljava/lang/String;

    const-string v1, "setSaveAsOption - invalid savePageAsOption"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "save-page-as-mhtml"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->appendSwitch(Ljava/lang/String;)V

    :pswitch_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSaveAsOption:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSync1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync1:Ljava/lang/String;

    return-void
.end method

.method public setSync2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync2:Ljava/lang/String;

    return-void
.end method

.method public setSync3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync3:Ljava/lang/String;

    return-void
.end method

.method public setSync4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync4:Ljava/lang/String;

    return-void
.end method

.method public setSync5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mSync5:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailCachedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mThumbnailCachedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->mUrl:Ljava/lang/String;

    return-void
.end method
