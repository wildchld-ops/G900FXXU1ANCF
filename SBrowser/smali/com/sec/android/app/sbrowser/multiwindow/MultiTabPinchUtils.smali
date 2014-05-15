.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;
.super Ljava/lang/Object;
.source "MultiTabPinchUtils.java"


# instance fields
.field mAdjustScrollViewStartTime:J

.field mDY:I

.field mDiffStartingAndTargetDistanceBetweenViewAndScrollviewYPos:F

.field mDistanceY:F

.field mDuration:I

.field mElapsedTime:J

.field mFirstTouchedViewIndex:I

.field mInterpolation:F

.field mInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mIsAnimationInProgress:Z

.field private mIsPinched:Z

.field mLayout:Landroid/view/ViewGroup;

.field mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

.field mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field mScrollView:Landroid/widget/FrameLayout;

.field mStartingDistanceBetweenViewAndScrollviewYPos:F

.field mTargetDistanceBetweenViewAndScrollviewYPos:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mStartingDistanceBetweenViewAndScrollviewYPos:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mTargetDistanceBetweenViewAndScrollviewYPos:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDiffStartingAndTargetDistanceBetweenViewAndScrollviewYPos:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDistanceY:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolation:F

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mAdjustScrollViewStartTime:J

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mElapsedTime:J

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDY:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDuration:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsPinched:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsAnimationInProgress:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmScrollView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsPinched:Z

    return p1
.end method

.method private startPinchZoomAnimation(IIIIZI)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;

    move v4, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;-><init>(Landroid/view/View;Landroid/view/View;IZI)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setMinHeight(I)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setMaxHeight(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->calculateMaxMinHeightDiff()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setMinBottomMargin(F)V

    int-to-float v4, p4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setMaxBottomMargin(F)V

    int-to-long v4, p6

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    if-ne p1, v4, :cond_0

    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;

    invoke-direct {v4, p0, p5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$3;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;Z)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MutiTabPinchAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public adjustScrollView(F)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;F)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDistanceY:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mAdjustScrollViewStartTime:J

    return-void
.end method

.method public adjustScrollViewSpecialCase(F)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;F)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mAdjustScrollViewStartTime:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public getFirstTouchedViewIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    return v0
.end method

.method public isPinchZoomAnimationInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsAnimationInProgress:Z

    return v0
.end method

.method public isPinched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsPinched:Z

    return v0
.end method

.method public performPinchZoom(Z)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmScrollView()Landroid/widget/FrameLayout;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mIsAnimationInProgress:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v15, 0xd

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->PINCH:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabAnimations()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->resetDragAnimation()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setImageViewVisible(Z)V

    const/16 v18, 0x0

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PINCH_ZOOM_ANIMATION_DURATION:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDuration:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDuration:I

    add-int/lit8 v7, v1, 0x19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenPinchedInViews()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTitleViewTopMargin()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewBottomMargin()I

    move-result v2

    sub-int v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowTitleBarHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewBottomMargin()I

    move-result v2

    add-int v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v4

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCROLL_BAR_ENABLED:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v2, v3, v5

    mul-int/2addr v1, v2

    move-object/from16 v0, v17

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v17

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int v2, v3, v5

    mul-int/2addr v1, v2

    move-object/from16 v0, v17

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    move/from16 v0, v16

    if-ge v1, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v1, v1, v16

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    if-gez v1, :cond_6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    :cond_6
    int-to-float v1, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->adjustScrollView(F)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVerticalFadingEdgeEnabled(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->startPinchZoomAnimation(IIIIZI)V

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    if-ne v9, v1, :cond_c

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    add-int v18, v3, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mMultiWindowMainActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mStartingDistanceBetweenViewAndScrollviewYPos:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    mul-int v1, v1, v18

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mTargetDistanceBetweenViewAndScrollviewYPos:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mTargetDistanceBetweenViewAndScrollviewYPos:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mStartingDistanceBetweenViewAndScrollviewYPos:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDiffStartingAndTargetDistanceBetweenViewAndScrollviewYPos:F

    int-to-float v1, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->adjustScrollViewSpecialCase(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v2, v3, v5

    mul-int/2addr v1, v2

    move-object/from16 v0, v17

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v17

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int v2, v3, v5

    mul-int/2addr v1, v2

    move-object/from16 v0, v17

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    if-ge v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mStartingDistanceBetweenViewAndScrollviewYPos:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v15

    sub-int/2addr v1, v2

    mul-int v1, v1, v18

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mTargetDistanceBetweenViewAndScrollviewYPos:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mTargetDistanceBetweenViewAndScrollviewYPos:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mStartingDistanceBetweenViewAndScrollviewYPos:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDiffStartingAndTargetDistanceBetweenViewAndScrollviewYPos:F

    int-to-float v1, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->adjustScrollViewSpecialCase(F)V

    goto/16 :goto_1

    :cond_b
    int-to-float v1, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->adjustScrollView(F)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDuration:I

    move-object/from16 v8, p0

    move v10, v3

    move v11, v4

    move v12, v5

    move/from16 v13, p1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->startPinchZoomAnimation(IIIIZI)V

    goto/16 :goto_3
.end method

.method public setFirstTouchedViewIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mFirstTouchedViewIndex:I

    return-void
.end method
