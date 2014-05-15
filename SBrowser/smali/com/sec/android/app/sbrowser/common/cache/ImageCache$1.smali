.class Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->init(Lcom/sec/android/app/sbrowser/common/cache/ImageCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/cache/ImageCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->mRecyclingBitmap:Lcom/sec/android/app/sbrowser/common/cache/RecyclingBitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->access$000(Lcom/sec/android/app/sbrowser/common/cache/ImageCache;)Lcom/sec/android/app/sbrowser/common/cache/RecyclingBitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->mRecyclingBitmap:Lcom/sec/android/app/sbrowser/common/cache/RecyclingBitmap;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->access$000(Lcom/sec/android/app/sbrowser/common/cache/ImageCache;)Lcom/sec/android/app/sbrowser/common/cache/RecyclingBitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/cache/RecyclingBitmap;->setIsCached(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->access$100(Lcom/sec/android/app/sbrowser/common/cache/ImageCache;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->this$0:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->mReusableBitmaps:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->access$100(Lcom/sec/android/app/sbrowser/common/cache/ImageCache;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
