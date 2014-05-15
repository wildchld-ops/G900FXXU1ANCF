.class public Lcom/samsung/contacts/detail/CardListViewFlickAnimator;
.super Ljava/lang/Object;
.source "CardListViewFlickAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/detail/CardListViewFlickAnimator$CubicEaseOut;
    }
.end annotation


# instance fields
.field private mScreenHeight:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mTargetView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mScreenHeight:I

    iput-object p1, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mTargetView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public onFlick(Z)V
    .locals 8

    const-wide/16 v6, 0x15e

    const v5, 0x3de147ae

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mScreenHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/samsung/contacts/detail/CardListViewFlickAnimator$CubicEaseOut;

    invoke-direct {v2}, Lcom/samsung/contacts/detail/CardListViewFlickAnimator$CubicEaseOut;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/samsung/contacts/detail/CardListViewFlickAnimator;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/samsung/contacts/detail/CardListViewFlickAnimator$CubicEaseOut;

    invoke-direct {v2}, Lcom/samsung/contacts/detail/CardListViewFlickAnimator$CubicEaseOut;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
