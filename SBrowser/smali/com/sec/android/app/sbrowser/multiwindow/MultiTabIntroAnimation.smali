.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;
.super Landroid/view/animation/Animation;
.source "MultiTabIntroAnimation.java"


# instance fields
.field mMaxHeight:I

.field mMinHeight:I

.field mSclaeWidth:Z

.field mTabView:Landroid/widget/ImageView;

.field mView:Landroid/view/View;

.field mafterTop:I

.field mfirstTop:I

.field mleftAfter:I

.field mleftBefore:I

.field mrightafter:I

.field mrightbefore:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMinHeight:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMaxHeight:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mfirstTop:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mafterTop:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftBefore:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftAfter:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightbefore:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightafter:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mSclaeWidth:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mView:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mTabView:Landroid/widget/ImageView;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mSclaeWidth:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    const/high16 v9, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mafterTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mfirstTop:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mafterTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v8, v9, p1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMinHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMaxHeight:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMinHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v8, v9, p1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftAfter:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftBefore:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftAfter:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v8, v9, p1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v3, v6

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightafter:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightbefore:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightafter:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v8, v9, p1

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v4, v6

    iget v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightbefore:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMaxHeight:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mafterTop:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mSclaeWidth:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mTabView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v6, v4, v3

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mTabView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMaxHeight:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mMinHeight:I

    return-void
.end method

.method public setTopInit(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mfirstTop:I

    return-void
.end method

.method public setTopLater(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mafterTop:I

    return-void
.end method

.method public setleftafter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftAfter:I

    return-void
.end method

.method public setleftbefore(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mleftBefore:I

    return-void
.end method

.method public setrightafter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightafter:I

    return-void
.end method

.method public setrightbefore(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->mrightbefore:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
