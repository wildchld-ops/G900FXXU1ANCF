.class Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
.source "TwHorizontalAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemSelectHighlightingAnimation"
.end annotation


# static fields
.field private static final DEFAULT_FROM_X:F = 1.0f

.field private static final DEFAULT_FROM_Y:F = 1.0f

.field private static final DEFAULT_TO_X:F = 1.08f

.field private static final DEFAULT_TO_Y:F = 1.08f


# instance fields
.field private mDelayTime:I

.field private mDuration:I

.field private mFromX:F

.field private mFromY:F

.field private mHalfOfAnimationPassed:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field private mStartTime:J

.field private mToX:F

.field private mToY:F


# direct methods
.method protected constructor <init>(ZLandroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    const v2, 0x3f8a3d71

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;-><init>(IZ)V

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mPivotX:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mPivotY:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    return-void
.end method

.method private switchToScaleDown()V
    .locals 3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mStartTime:J

    sub-long v0, p1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v3, 0x3f00

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->switchToScaleDown()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mHalfOfAnimationPassed:Z

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    goto :goto_0

    :cond_4
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 8

    const/high16 v7, 0x3f80

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v2, v4, v5

    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mPivotX:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method public isFinished()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDelayTime:I

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

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mStartTime:J

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isListItemSelectionAnimating()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mProgress:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaleUpParameters(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromX:F

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToX:F

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mFromY:F

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mToY:F

    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mPivotX:F

    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mPivotY:F

    return-void
.end method

.method public start(I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mStartTime:J

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemSelectHighlightingAnimation;->mDuration:I

    return-void
.end method
