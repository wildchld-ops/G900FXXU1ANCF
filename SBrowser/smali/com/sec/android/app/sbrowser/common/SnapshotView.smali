.class public Lcom/sec/android/app/sbrowser/common/SnapshotView;
.super Lcom/sec/android/app/sbrowser/common/AnimView;
.source "SnapshotView.java"


# static fields
.field private static final DEBUG_TRACE:Z


# instance fields
.field private mScreenShot:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/AnimView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SnapshotView;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SnapshotView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SnapshotView;->getShadowEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SnapshotView;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/SnapshotView;->onDrawReflectionInShadow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public recycleCache()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/AnimView;->recycleCache()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SnapshotView;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SnapshotView;->mScreenShot:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setScreenShot(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SnapshotView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SnapshotView;->mScreenShot:Landroid/graphics/Bitmap;

    return-void
.end method
