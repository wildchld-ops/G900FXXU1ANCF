.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;
.super Ljava/lang/Object;
.source "BookmarkViewHolder.java"


# instance fields
.field private mIsChecked:Z

.field private mIsThumbnailRequested:Z

.field private mObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsChecked:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsThumbnailRequested:Z

    return-void
.end method


# virtual methods
.method public clearThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getBookmarkObject()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsChecked:Z

    return v0
.end method

.method public isThumbnailRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsThumbnailRequested:Z

    return v0
.end method

.method public setBookmarkObject(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsChecked:Z

    return-void
.end method

.method public setThumbnailBitmap([B)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsThumbnailRequested:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    const-string v1, "ShowBookmarks"

    const-string v2, "OutOfMemoryError happened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    const-string v1, "ShowBookmarks"

    const-string v2, "OutOfMemoryError while decoding byte Array in ShowBookmarkFileds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setThumbnailBitmapData(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkViewHolder;->mIsThumbnailRequested:Z

    return-void
.end method
