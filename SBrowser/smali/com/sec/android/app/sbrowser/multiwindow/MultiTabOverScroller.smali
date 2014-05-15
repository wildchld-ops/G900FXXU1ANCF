.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;
.super Ljava/lang/Object;
.source "MultiTabOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mFlywheel:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->finish()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$800(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->updateScroll(F)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->abortAnimation()V

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->finish()V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->extendDuration(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)F

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)F

    move-result v7

    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mMode:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$202(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;Z)Z

    move-result v1

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$202(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getFlingVelocityForDistance(I)D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->getSplineVelocityFromDistance(I)D
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlingYDistance(I)D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #calls: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStartX()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$900(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->setFriction(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mMode:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mMode:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->startScroll(III)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 8

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerX:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$800(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller;->mScrollerY:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;->access$800(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
