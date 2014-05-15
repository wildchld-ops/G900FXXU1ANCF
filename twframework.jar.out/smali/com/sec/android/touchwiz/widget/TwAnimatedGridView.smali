.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.super Lcom/sec/android/touchwiz/widget/TwGridView;
.source "TwAnimatedGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    }
.end annotation


# instance fields
.field private mCurIds:[J

.field protected mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

.field private mPrevIds:[J

.field private mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mPrevIds:[J

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mCurIds:[J

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mTransformation:Landroid/view/animation/Transformation;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwGridView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwGridView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method onAllAnimationsFinished()V
    .locals 0

    return-void
.end method

.method protected onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0

    return-void
.end method
