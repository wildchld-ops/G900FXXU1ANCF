.class public Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;
.super Ljava/lang/Object;
.source "ReadingListImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;,
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$AsyncDrawable;,
        Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME:I = 0x32

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1


# instance fields
.field private mContextForImageLoading:Landroid/content/Context;

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

.field private mImageCacheParams:Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;

.field private mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field private mResources:Landroid/content/res/Resources;

.field private mThumbnailHeight:I

.field private mThumbnailRatio:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mFadeInBitmap:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWork:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailWidth:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailHeight:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailRatio:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mExitTasksEarly:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mCurrentTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mContextForImageLoading:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWork:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Lcom/sec/android/app/sbrowser/common/cache/ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->convertByteArrayToFavicon(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x1

    if-gt v0, p3, :cond_0

    if-le v5, p2, :cond_2

    :cond_0
    int-to-float v7, v0

    int-to-float v8, p3

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v7, v5

    int-to-float v8, p2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ge v1, v6, :cond_1

    move v2, v1

    :goto_0
    mul-int v7, v5, v0

    int-to-float v3, v7

    mul-int v7, p2, p3

    mul-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    :goto_1
    mul-int v7, v2, v2

    int-to-float v7, v7

    div-float v7, v3, v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->cancel(Z)Z

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mSavePageId:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->access$800(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelWork - cancelled work for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private convertByteArrayToFavicon(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f02004e

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    :goto_1
    const/4 p2, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, p2

    invoke-static {p2, v6, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailWidth:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailRatio:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailHeight:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mThumbnailRatio:I

    mul-int/2addr v4, v5

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, p2

    invoke-static {p2, v6, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$AsyncDrawable;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$AsyncDrawable;->getBitmapWorkerTask()Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mFadeInBitmap:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCacheParams:Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCacheParams:Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->getInstance(Landroid/support/v4/app/FragmentManager;Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;)Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)V

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public clearCache()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->clearCache()V

    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected closeCacheInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->clearCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->closeCache()V

    return-void
.end method

.method public flushCache()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$CacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected flushCacheInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->flush()V

    :cond_0
    return-void
.end method

.method public getImageCahce()Lcom/sec/android/app/sbrowser/common/cache/ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    return-object v0
.end method

.method public getImageFromDB(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mContextForImageLoading:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    new-array v2, v12, [Ljava/lang/String;

    const-string v5, "favicon"

    aput-object v5, v2, v11

    const-string v3, "_id=?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    const-string v11, "DB returned null cursor!"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const/4 v8, 0x0

    :cond_0
    :goto_0
    move-object v5, v10

    :goto_1
    return-object v5

    :cond_1
    if-eqz v8, :cond_4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "favicon"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    const-string v11, "BitmapWorkerTask - bitmapData is null"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v8, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    const/4 v8, 0x0

    :cond_2
    :goto_2
    move-object v5, v10

    goto :goto_1

    :cond_3
    :try_start_4
    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    const-string v10, "BitmapWorkerTask - creating drawable"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mContextForImageLoading:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->convertByteArrayToFavicon(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v6

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :goto_3
    const/4 v8, 0x0

    :cond_5
    :goto_4
    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_6
    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while getting save page data - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v9

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v9

    :try_start_8
    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while getting save page data - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v9

    goto :goto_5

    :catch_4
    move-exception v9

    :try_start_a
    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while getting save page data - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v9

    goto :goto_5

    :catch_6
    move-exception v9

    :try_start_c
    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No memory to perform getBitmapFromDB hence exiting the activity - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mContextForImageLoading:Landroid/content/Context;

    instance-of v5, v5, Landroid/support/v4/app/FragmentActivity;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mContextForImageLoading:Landroid/content/Context;

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_6
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v9

    goto/16 :goto_5

    :catchall_0
    move-exception v5

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_7

    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    const/4 v8, 0x0

    :cond_7
    :goto_6
    throw v5

    :catch_8
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_9
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_a
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_b
    move-exception v9

    goto/16 :goto_5
.end method

.method protected initDiskCacheInternal()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->initDiskCache()V

    :cond_0
    return-void
.end method

.method public loadImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V
    .locals 12

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_2
    if-eqz v11, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage - Found image in cache for id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage - Didn\'t found image in cache for id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " executing worker task to load image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$AsyncDrawable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, v1, v2, v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setExitTasksEarly(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mExitTasksEarly:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->setPauseWork(Z)V

    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mFadeInBitmap:Z

    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWork:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWork:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
