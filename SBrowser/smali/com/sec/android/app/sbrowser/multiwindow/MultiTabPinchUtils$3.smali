.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;
.super Ljava/lang/Object;
.source "MultiTabPinchUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->startPinchZoomAnimation(IIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

.field final synthetic val$zoom:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->val$zoom:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCROLL_BAR_ENABLED:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->val$zoom:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsPinched:Z
    invoke-static {v5, v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)Z

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x3c

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->val$zoom:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundViewID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageNormalBackgroundID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsPinched:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v5, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVerticalScrollBarPadding(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsAnimationInProgress:Z
    invoke-static {v5, v8}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->access$002(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsAnimationInProgress:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->access$002(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->val$zoom:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundViewID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
