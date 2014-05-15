.class public Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;
.super Landroid/view/animation/Animation;
.source "MutiTabPinchAnimation.java"


# instance fields
.field mChildView:Landroid/view/View;

.field mDown:Z

.field mMaxHeight:I

.field mMaxMarginBottom:F

.field mMaxMinHeightDiff:I

.field mMinHeight:I

.field mMinMarginBottom:F

.field mNewMarginBottom:I

.field mView:Landroid/view/View;

.field mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IZI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinHeight:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxHeight:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinMarginBottom:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMarginBottom:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mNewMarginBottom:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMinHeightDiff:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mDown:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mChildView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMinHeightDiff:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMarginBottom:F

    sub-float v1, v4, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mNewMarginBottom:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mChildView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mNewMarginBottom:I

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMinHeightDiff:I

    int-to-float v2, v2

    sub-float v3, v4, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMarginBottom:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mNewMarginBottom:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mChildView:Landroid/view/View;

    sub-float v1, v4, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public calculateMaxMinHeightDiff()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxHeight:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMinHeightDiff:I

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public setMaxBottomMargin(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxMarginBottom:F

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMaxHeight:I

    return-void
.end method

.method public setMinBottomMargin(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinMarginBottom:F

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->mMinHeight:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
