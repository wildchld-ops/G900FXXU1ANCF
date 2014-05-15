.class Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
.source "TwHorizontalAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslateItemAnimation"
.end annotation


# static fields
.field static final INVALID_TIME:J = 0x7fffffffffffffffL

.field static final TRANSLATE_SPEED:F = 0.6f


# instance fields
.field mAnchorDeltaX:I

.field mAnchorDeltaY:I

.field mAnchorX:I

.field mAnchorY:I

.field private mCache:Landroid/graphics/Bitmap;

.field mDelayTime:I

.field mDeltaX:I

.field mDeltaY:I

.field mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mOffsetXDest:I

.field mOffsetYDest:I

.field private mPaint:Landroid/graphics/Paint;

.field mProgress:F

.field private mProgressWithoutDelay:F

.field mStartTime:J

.field mTmpRect:Landroid/graphics/Rect;

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;-><init>(IZ)V

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mStartTime:J

    sub-long v0, p1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    :goto_0
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0

    :cond_4
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0
.end method

.method public createDrawingCache(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :goto_0
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onPreDraw()Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    if-nez v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method public delay(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getCurrentTranslateX()F
    .locals 4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method public getCurrentTranslateY()F
    .locals 4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method public getDestOffsetX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method public getDestOffsetY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    return v0
.end method

.method public getInterpolatedProgress()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mProgress:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v3, v3

    sub-float v4, v5, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v4, v4

    sub-float/2addr v5, v0

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public isFinished()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mStartTime:J

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public move(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setXSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    :cond_0
    return-void
.end method

.method public setYSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    :cond_0
    return-void
.end method

.method public start(F)V
    .locals 2

    const/high16 v1, 0x4396

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->start(I)V

    return-void
.end method

.method public start(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mStartTime:J

    if-nez p1, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDuration:I

    goto :goto_0
.end method

.method public translate(IIII)V
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    return-void
.end method

.method public translate2(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    return-void
.end method
