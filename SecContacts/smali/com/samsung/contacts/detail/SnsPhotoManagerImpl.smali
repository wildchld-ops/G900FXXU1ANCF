.class Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;
.super Lcom/samsung/contacts/detail/SnsPhotoManager;
.source "SnsPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;,
        Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;,
        Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingPreloadRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnsImageViewHeight:I

.field private final mSnsImageViewWidth:I

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManager;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/contacts/common/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x28000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    const/high16 v3, 0x49d8

    mul-float/2addr v3, v1

    float-to-int v0, v3

    new-instance v3, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$1;-><init>(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    const v3, 0x49f42400

    mul-float/2addr v3, v1

    float-to-int v2, v3

    new-instance v3, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$2;-><init>(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    const-string v3, "SnsPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache adj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SnsPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->maxSize()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewHeight:I

    return-void

    :cond_0
    const/high16 v1, 0x3f00

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->dumpStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->obtainPhotoUrlsToLoad(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->checkAllocatedHeapMemory()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;Ljava/lang/Object;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v1, p0, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZ)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v2, :cond_0

    const-string v3, "SnsPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overwriting cache: key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, v1, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v2, :cond_2

    const-string v2, " FRESH"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    :goto_1
    const-string v3, "SnsPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching data: key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_4

    const-string v2, "<null>"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;-><init>([B)V

    if-nez p3, :cond_1

    iget v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewWidth:I

    iget v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewHeight:I

    invoke-static {v0, v2, v3}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->inflateBitmap(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;II)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    return-void

    :cond_2
    const-string v2, " stale"

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    :cond_4
    array-length v2, p2

    invoke-static {v2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private checkAllocatedHeapMemory()V
    .locals 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    sub-long v0, v5, v7

    long-to-double v5, v2

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    long-to-double v7, v0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    const-string v5, "SnsPhotoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force garbage collection. Max : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Allocated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-void
.end method

.method private dumpStats()V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    add-int/lit8 v5, v5, 0x1

    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v7, v7

    add-int/2addr v6, v7

    :cond_1
    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v7, "SnsPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "L1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, v6, v1

    invoke-static {v9}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " holders, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bitmaps, avg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6, v5}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->safeDiv(II)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v4}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->safeDiv(II)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SnsPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "L1 Stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v9}, Landroid/util/LruCache;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", overwrite: fresh="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " stale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_2

    :cond_4
    const-string v7, "SnsPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "L2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bitmaps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", avg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v4}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->safeDiv(II)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static inflateBitmap(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;II)V
    .locals 7

    iget-object v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1, p1, p2}, Lcom/android/contacts/common/util/BitmapUtil;->getOptimalSampleSizeFromBytes([BII)I

    move-result v3

    iget v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v1, v3}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput v3, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    iput-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    const-string v4, "SnsPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inflateBitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-static {v6}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->btk(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private isCachedPhoto(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;Z)Z
    .locals 10

    iget-object v7, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    if-nez v2, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f08011c

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v7, 0x7f020092

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v7, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v7, v7

    const/16 v8, 0x2000

    if-ge v7, v8, :cond_4

    iget v7, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewWidth:I

    iget v8, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewHeight:I

    invoke-static {v2, v7, v8}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->inflateBitmap(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;II)V

    iget-object v0, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v0, v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f08011c

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v7, 0x106000d

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p3, :cond_9

    if-eqz v4, :cond_9

    const/4 v7, 0x2

    new-array v3, v7, [Landroid/graphics/drawable/Drawable;

    instance-of v7, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_8

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v3, v7

    :goto_2
    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v3, v7

    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0xc8

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->maxSize()I

    move-result v8

    div-int/lit8 v8, v8, 0x6

    if-ge v7, v8, :cond_7

    iget-object v7, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v7, 0x0

    iput-object v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v7, v2, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    aput-object v4, v3, v7

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method private loadPhoto(Landroid/widget/ImageView;Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoUrlsToLoad(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;

    iget-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewWidth:I

    iget v5, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mSnsImageViewHeight:I

    invoke-static {v0, v4, v5}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->inflateBitmap(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;II)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_0

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method private processLoadedImages()V
    .locals 7

    iget-object v6, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v1, v6}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;

    invoke-direct {p0, v4}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->isCachedPhoto(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->softenCache()V

    iget-object v6, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->requestLoading()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v6, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingPreloadRequests:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->requestLoading()V

    goto :goto_2
.end method

.method private requestLoading()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoadingRequested:Z

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method private softenCache()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "SnsPhotoManager"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoaderThread:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;-><init>(Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoaderThread:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoaderThread:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;->start()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoadingRequested:Z

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->ensureLoaderThread()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mLoaderThread:Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->processLoadedImages()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->dumpStats()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "SnsPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPhoto request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;->createFromUrl(Ljava/lang/String;)Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->loadPhoto(Landroid/widget/ImageView;Lcom/samsung/contacts/detail/SnsPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string v0, "SnsPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/SnsPhotoManagerImpl;->clear()V

    :cond_0
    return-void
.end method
