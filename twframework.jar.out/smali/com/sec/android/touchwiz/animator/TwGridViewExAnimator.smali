.class public Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
.super Landroid/animation/ValueAnimator;
.source "TwGridViewExAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$1;,
        Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;
    }
.end annotation


# static fields
.field public static final ANI_TYPE_ALPHA:I = 0x4

.field public static final ANI_TYPE_BOTTOM:I = 0x8

.field public static final ANI_TYPE_HEIGHT:I = 0x6

.field public static final ANI_TYPE_NONE:I = -0x1

.field public static final ANI_TYPE_RIGHT:I = 0x7

.field public static final ANI_TYPE_SCALEX:I = 0x2

.field public static final ANI_TYPE_SCALEY:I = 0x3

.field public static final ANI_TYPE_TRANSX:I = 0x0

.field public static final ANI_TYPE_TRANSY:I = 0x1

.field public static final ANI_TYPE_WIDTH:I = 0x5

.field private static final MIN_DURATION:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "GridViewExAnimator"


# instance fields
.field private mAniType:I

.field private mCurrentProgress:F

.field private mCurrentValuef:F

.field private mEndValuef:F

.field private mId:I

.field private mIsNeedToInavalidate:Z

.field private mListener:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

.field private mOriginStartDelay:J

.field private mStartValuef:F

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;FF)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mId:I

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;-><init>(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mListener:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p3, v0, v2

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setFloatValues([F)V

    new-instance v0, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mListener:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z

    return v0
.end method

.method public static createAlphaAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createBottomAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createHeightAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createRightAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createScaleXAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createScaleYAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createTransXAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createTransYAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createWidthAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 3

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mId:I

    return v0
.end method

.method public requesetInvalidateOnUpdateView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z

    return-void
.end method

.method public reversePoint()V
    .locals 8

    const-wide/16 v6, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setFloatValues([F)V

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    sub-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    sub-long v0, p1, v0

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mId:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method public setStartPoint()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setFloatValues([F)V

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-long v0, v2

    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method
