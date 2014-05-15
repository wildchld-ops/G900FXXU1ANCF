.class public Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
.super Landroid/animation/ValueAnimator;
.source "TwPropertyAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    }
.end annotation


# static fields
.field public static final ANI_TYPE_ALPHA:I = 0x5

.field public static final ANI_TYPE_BOTTOM:I = 0x8

.field public static final ANI_TYPE_NONE:I = 0x0

.field public static final ANI_TYPE_RIGHT:I = 0x7

.field public static final ANI_TYPE_SCALEX:I = 0x3

.field public static final ANI_TYPE_SCALEY:I = 0x4

.field public static final ANI_TYPE_TRANSX:I = 0x1

.field public static final ANI_TYPE_TRANSY:I = 0x2

.field private static final KEY_FRAME_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GridViewEx"


# instance fields
.field private mCurrentValuef:F

.field private mOriginStartDelay:J

.field private mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

.field private mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    new-array v0, v2, [Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setFloatValues([F)V

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public addProperty(Landroid/view/View;IFF)Z
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v5, "GridViewEx"

    const-string v6, "addPropery : view is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v0, v5, v2

    :cond_1
    if-nez v0, :cond_7

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addProperty(IFF)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "GridViewEx"

    const-string v6, "addPropery : Invalid property type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    aput-object p1, v3, v4

    iput-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v4, v4, v2

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    array-length v4, v4

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addProperty(IFF)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "GridViewEx"

    const-string v6, "addPropery : Invalid property type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v2, v2, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->access$000(Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;)[I

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "AnimationProperty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Property count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->updateProperty(Landroid/view/View;F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reversePoint()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setFloatValues([F)V

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    sub-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    sub-long v0, p1, v0

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0
.end method

.method public setStartDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method public setStartPoint()V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setFloatValues([F)V

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    float-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method
