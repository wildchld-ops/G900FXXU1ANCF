.class public Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "TwPropertyAnimationFactory.java"


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method

.method private findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getDuration()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getStartDelay()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createAlphaAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createAlphaAnimation(Landroid/view/View;IFFJ)Z
    .locals 7

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v6, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public createBottomAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createBottomAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createBottomAnimation(Landroid/view/View;IFFJ)Z
    .locals 7

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v6, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public createRightAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createRightAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createRightAnimation(Landroid/view/View;IFFJ)Z
    .locals 7

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {v6, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public createScaleXAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleXAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createScaleXAnimation(Landroid/view/View;IFFJ)Z
    .locals 7

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v6, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public createScaleYAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleYAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createScaleYAnimation(Landroid/view/View;IFFJ)Z
    .locals 7

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v6, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public createTransXAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransXAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createTransXAnimation(Landroid/view/View;IFFJ)Z
    .locals 8

    const/4 v7, 0x1

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v6, p1, v7, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    return v7
.end method

.method public createTransYAnimation(Landroid/view/View;IFF)Z
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransYAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createTransYAnimation(Landroid/view/View;IFFJ)Z
    .locals 7

    int-to-long v1, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-direct {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v6, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentAnimationList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
