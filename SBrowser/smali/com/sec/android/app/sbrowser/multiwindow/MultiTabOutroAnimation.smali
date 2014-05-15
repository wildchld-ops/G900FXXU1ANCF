.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;
.super Landroid/view/animation/Animation;
.source "MultiTabOutroAnimation.java"


# instance fields
.field count:I

.field mMaxHeight:I

.field mMinHeight:I

.field mSclaeWidth:Z

.field mTabView:Landroid/widget/ImageView;

.field mView:Landroid/view/View;

.field mViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field mafterTop:I

.field mfirstTop:I

.field mleftAfter:I

.field mleftBefore:I

.field mrightafter:I

.field mrightbefore:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMinHeight:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMaxHeight:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mfirstTop:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mafterTop:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftBefore:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftAfter:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightbefore:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightafter:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->count:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mSclaeWidth:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mTabView:Landroid/widget/ImageView;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mSclaeWidth:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftAfter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftAfter:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftBefore:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mafterTop:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mafterTop:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mfirstTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v2, v3

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMinHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMaxHeight:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMinHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightbefore:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightafter:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightbefore:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->reset()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mTabView:Landroid/widget/ImageView;

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMaxHeight:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mMinHeight:I

    return-void
.end method

.method public setTopInit(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mfirstTop:I

    return-void
.end method

.method public setTopLater(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mafterTop:I

    return-void
.end method

.method public setleftafter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftAfter:I

    return-void
.end method

.method public setleftbefore(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mleftBefore:I

    return-void
.end method

.method public setrightafter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightafter:I

    return-void
.end method

.method public setrightbefore(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroAnimation;->mrightbefore:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
