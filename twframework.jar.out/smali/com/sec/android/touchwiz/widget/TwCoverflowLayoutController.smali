.class public Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
.super Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.source "TwCoverflowLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;
    }
.end annotation


# static fields
.field static final CREATED_CHILD_VIEW_SPACE:I = 0x190

.field static final MAX_DEGREE_OF_OVERSCROLL:F = 15.0f

.field static final MAX_VELOCITY_ON_FLING:F = 6000.0f

.field static final MIN_VELOCITY_ON_FLING:F = -6000.0f

.field static final OFFSET_LEFT_RIGHT:I = -0x64

.field static final SCROLL_TO_POSITION_ANIMATION_DURATION:I = 0x3e8

.field static final SLOT_ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private mDegreeOfOverScrollView:F

.field private mDeltaX:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

.field private mFrameHeight:I

.field private mGalleryExPadding:Landroid/graphics/Rect;

.field private mHeightMeasureSpec:I

.field private mIsOnAnimation:Z

.field private mIsOnFling:Z

.field private mIsOverScroll:Z

.field private mOverScrollItem:Landroid/view/View;

.field private mScrollState:I

.field private mScrollsensitive:F

.field private mSelectedChild:Landroid/view/View;

.field private mSelectedOffset:I

.field private mSelectedPosition:I

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    const/high16 v0, -0x4000

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollsensitive:F

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionOverScroll(I)V

    return-void
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v9, v6, -0x1

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    if-nez v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {p0, v3, v9, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->requestDetachViewsFromParent(IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v9

    sub-int v2, v6, v9

    add-int/lit8 v3, v4, -0x1

    :goto_2
    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v2, :cond_0

    move v5, v3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v9, v6, 0x1

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    if-nez v6, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {p0, v3, v9, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->requestDetachViewsFromParent(IIZ)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3
.end method

.method private fillToGalleryLeft()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v0, v4, -0x1

    invoke-static {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v1

    :goto_0
    add-int/lit16 v4, v2, -0x190

    if-le v1, v4, :cond_1

    if-ltz v0, :cond_1

    invoke-direct {p0, v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-static {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v5

    sub-int v1, v4, v5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int v1, v6, v3

    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    :goto_0
    add-int/lit16 v6, v2, 0x190

    if-ge v0, v6, :cond_1

    if-ge v1, v4, :cond_1

    invoke-direct {p0, v1, v0, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v4, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private finishOverScrollMode()V
    .locals 7

    const/4 v6, 0x0

    const/16 v0, 0x12c

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    const-string v3, "rotationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private static getCenterOfView(Landroid/view/View;Z)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x64

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private makeAndAddView(IIZ)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v9

    if-eqz p3, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {v9, v0, v8, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mWidthMeasureSpec:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x78

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFrameHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFrameHeight:I

    sub-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    add-int v1, v4, v5

    if-eqz p3, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    add-int v2, p2, v8

    add-int v3, v2, v7

    :goto_1
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    return-object v0

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    sub-int v3, p2, v8

    sub-int v2, v3, v7

    goto :goto_1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotY(F)V

    const-wide/high16 v4, 0x3fe0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v7, v7, 0x2

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3f5205bc01a36e2fL

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x64

    int-to-double v4, v4

    const-wide v6, 0x3f6205bc01a36e2fL

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    const-wide v6, 0x3ff3333333333333L

    add-double/2addr v4, v6

    double-to-float v0, v4

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->searchImageView(Landroid/view/ViewGroup;I)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_1
    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->setColorFilter(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v2

    sub-int v0, v2, v1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startUsingDistance(II)V

    goto :goto_0
.end method

.method private searchImageView(Landroid/view/ViewGroup;I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->searchImageView(Landroid/view/ViewGroup;I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->setColorFilter(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setColorFilter(Landroid/view/View;I)V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x437f

    const-wide/high16 v3, 0x3fe0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, p2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x3f747ae147ae147bL

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v2, v3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    mul-float v3, v2, v9

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    mul-float v4, v2, v9

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    mul-float v4, v2, v9

    float-to-int v4, v4

    or-int/2addr v3, v4

    const/high16 v4, -0x100

    or-int/2addr v3, v4

    invoke-direct {v0, v3, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private trackMotionOverScroll(I)V
    .locals 8

    const/high16 v7, 0x4170

    const/high16 v6, -0x3e90

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    if-ne v0, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    int-to-float v1, p1

    const v2, 0x3da3d70a

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getChildDrawingOrder(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v5, p2

    :goto_1
    return v5

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    invoke-static {v1, v8}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v4

    if-eqz p1, :cond_2

    if-gt v2, v4, :cond_3

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_2
    if-lt v2, v4, :cond_3

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_3
    sub-int v0, v4, v2

    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public layoutchildren(II)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/high16 v5, 0x43c8

    int-to-float v6, v1

    mul-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, p1, v7, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v3

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x64

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/16 v5, 0x3c

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryRight()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryLeft()V

    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->updateSelectedItemMetadata()V

    return-void
.end method

.method public measureChildren(II)[I
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-array v4, v7, [I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0, v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x78

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v2, v7, v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v3, v7, v8

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v2, v7, v8

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v3, v7, v8

    :cond_2
    invoke-static {v2, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-static {v3, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    aput v6, v4, v9

    const/4 v7, 0x1

    aput v0, v4, v7

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mHeightMeasureSpec:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mWidthMeasureSpec:I

    return-object v4
.end method

.method public onFling(F)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-eq v8, v6, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    if-ne v8, v6, :cond_2

    :cond_0
    move v6, v7

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    if-nez v8, :cond_6

    cmpl-float v8, p1, v10

    if-lez v8, :cond_6

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v2

    if-ge v0, v2, :cond_1

    :cond_3
    const/4 v4, 0x0

    cmpl-float v8, p1, v10

    if-lez v8, :cond_7

    const v8, 0x45bb8000

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    neg-float v9, v4

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startUsingVelocity(I)V

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    invoke-interface {v6, v3, v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    :cond_5
    move v6, v7

    goto :goto_0

    :cond_6
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_3

    cmpg-float v8, p1, v10

    if-gez v8, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v2

    if-gt v0, v2, :cond_3

    goto :goto_0

    :cond_7
    cmpg-float v8, p1, v10

    if-gez v8, :cond_4

    const v8, -0x3a448000

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    neg-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1
.end method

.method public onOverScroll(II)Z
    .locals 3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollsensitive:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionOverScroll(I)V

    const/4 v1, 0x0

    return v1
.end method

.method public onScroll(II)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-eq v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    if-ne v2, v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    mul-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionScroll(I)V

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollToPosition(IZ)V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->onUp()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->onUp()V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->access$000(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V

    :cond_0
    return-void
.end method

.method public pointToPosition(II)I
    .locals 6

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/2addr v5, v4

    :goto_1
    return v5

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public scrollToPosition(IZ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->access$000(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p1, v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v0, v3, 0x2

    :goto_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    sub-int/2addr v3, p1

    mul-int v2, v3, v0

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    :cond_3
    const-string v3, "scrollToPosition"

    const-string v4, "Child View is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->requestdetachAllViewsFromParent(IZ)V

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->layoutchildren(II)V

    goto :goto_0
.end method

.method public sortChildView()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method trackMotionScroll(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v0, v4, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    neg-int v4, v4

    div-int/2addr v4, v0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->updateSelectedItemMetadata()V

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->offsetChildrenLeftAndRight(I)V

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryRight()V

    :goto_2
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->detachOffScreenChildren(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    invoke-interface {v4, v1, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwGalleryEx;III)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryLeft()V

    goto :goto_2
.end method
