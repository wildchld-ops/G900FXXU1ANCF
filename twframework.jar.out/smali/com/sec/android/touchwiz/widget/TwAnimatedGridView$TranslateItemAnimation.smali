.class public Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
.source "TwAnimatedGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateItemAnimation"
.end annotation


# static fields
.field static final TRANSLATE_SPEED:F = 0.6f


# instance fields
.field mDelay:I

.field mDestOffsetX:I

.field mDestOffsetY:I

.field mDuration:I

.field private mFinish:Z

.field mOffsetXAnimation:I

.field mOffsetYAnimation:I

.field mPaint:Landroid/graphics/Paint;

.field mPrevCalcTime:J

.field mProgress:F

.field mStartTime:J

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;-><init>(IZ)V

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mXSpeedFactor:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mYSpeedFactor:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mProgress:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mStartTime:J

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDuration:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mFinish:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mStartTime:J

    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 12

    const v11, 0x3f19999a

    const/4 v10, 0x0

    iget-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    const-wide/high16 v8, -0x8000

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move-wide v2, p1

    :goto_0
    sub-long v4, p1, v2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-long v6, v6

    sub-long/2addr v6, v4

    long-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    :goto_1
    return-void

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    long-to-float v6, v4

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mXSpeedFactor:F

    mul-float v0, v6, v7

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v0

    if-lez v6, :cond_4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    int-to-float v6, v6

    sub-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    :goto_2
    long-to-float v6, v4

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mYSpeedFactor:F

    mul-float v1, v6, v7

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    :cond_2
    :goto_3
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    goto :goto_2

    :cond_4
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    goto :goto_3

    :cond_6
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    goto :goto_3
.end method

.method public createDrawingCache(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public delay(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getDestOffsetX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    return v0
.end method

.method public getDestOffsetY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDuration:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mProgress:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 4

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public isFinished()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDelay:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mFinish:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mFinish:Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method public setXSpeedFactor(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mXSpeedFactor:F

    return-void
.end method

.method public setYSpeedFactor(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mYSpeedFactor:F

    return-void
.end method

.method public start(JI)V
    .locals 0

    return-void
.end method

.method public translate(IIII)V
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetX:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetXAnimation:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mDestOffsetY:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    sub-int/2addr v0, p4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mOffsetYAnimation:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->mPrevCalcTime:J

    return-void
.end method
