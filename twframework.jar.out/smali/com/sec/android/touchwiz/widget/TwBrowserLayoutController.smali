.class public Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
.super Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.source "TwBrowserLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;,
        Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;
    }
.end annotation


# static fields
.field static final MAX_VELOCITY_ON_FLING:F = 3000.0f

.field static final MIN_VELOCITY_ON_FLING:F = -3000.0f


# instance fields
.field final FLING_SENSITIVE:F

.field final HEIGHT_RATIO:F

.field private final MAX_DEGREE_OF_OVERSCROLL:F

.field final OVERSCROLL_DURATION:I

.field final OVERSCROLL_MAX_DURATION:I

.field final ROTATE_SENSITIVE:F

.field final SCROLL_SENSITIVE:F

.field final SHOW_ITEM_NUM:I

.field final SPACE_RATIO:F

.field final TAG:Ljava/lang/String;

.field final TIME_ON_FLING:I

.field final TIME_SCROLL_POSITION:I

.field final WIDTH_ALL_PARTITION:I

.field final WIDTH_CENTER_PARTITION:I

.field private mDegreeOfOverScrollView:F

.field private mDeltaX:I

.field mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

.field private mDownPosition:I

.field private mFinalXpos:F

.field private mFinishOverScrollAni:Landroid/animation/Animator;

.field private mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

.field private mFocusIndex:I

.field private mFocusView:Landroid/view/View;

.field private mFrameHeigh:I

.field private mFrameWidth:I

.field private mHeightMeasureSpec:I

.field private mIsOnAnimation:Z

.field private mIsOnFling:Z

.field private mIsOverScroll:Z

.field private mOverScrollItem:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollState:I

.field private mSelectView:Landroid/view/View;

.field private mSelectedOffsetTopAndOffset:I

.field private mSelectedPosition:I

.field private mShouldStopFling:Z

.field private mSideWidthFrame:I

.field private mSpacing:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mVelocity:F

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    const-string v0, "BrowserTest"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->SHOW_ITEM_NUM:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->TIME_ON_FLING:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->TIME_SCROLL_POSITION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->OVERSCROLL_DURATION:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->OVERSCROLL_MAX_DURATION:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->WIDTH_ALL_PARTITION:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->WIDTH_CENTER_PARTITION:I

    const v0, 0x3da3d70a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->ROTATE_SENSITIVE:F

    const/high16 v0, -0x4000

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->SCROLL_SENSITIVE:F

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->FLING_SENSITIVE:F

    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->HEIGHT_RATIO:F

    const v0, 0x3d408312

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->SPACE_RATIO:F

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;-><init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->MAX_DEGREE_OF_OVERSCROLL:F

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->judgeFocusIndex()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionOverScroll(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfGallery()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V

    return-void
.end method

.method private calculateScale()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v12

    add-int v4, v11, v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    div-int/lit8 v12, v12, 0x2

    add-int v1, v11, v12

    sub-int v11, v4, v1

    int-to-float v3, v11

    const-wide v11, 0x3ff3333333333333L

    int-to-float v13, v4

    div-float v13, v3, v13

    float-to-double v13, v13

    const-wide v15, -0x4036666666666666L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    sub-double v9, v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v11

    int-to-float v5, v11

    int-to-float v11, v1

    sub-float v11, v5, v11

    div-float/2addr v11, v5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v12, v12

    mul-float v8, v11, v12

    const/4 v11, 0x0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v11, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    invoke-virtual {v2, v8}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v2, v11}, Landroid/view/View;->setPivotY(F)V

    double-to-float v11, v9

    invoke-virtual {v2, v11}, Landroid/view/View;->setScaleX(F)V

    double-to-float v11, v9

    invoke-virtual {v2, v11}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private detachChild()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v2, v5, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->requestDetachViewsFromParent(IIZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v4, v5, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->requestDetachViewsFromParent(IIZ)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillToGalleryLeft(II)V
    .locals 11

    const/4 v10, 0x0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v3

    move v8, p1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v4, p2, v9

    const/4 v7, 0x0

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    if-gt v4, v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_0
    move v1, p2

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-eqz v7, :cond_1

    add-int/lit8 v1, p2, -0x1

    sub-int v2, v8, v5

    :cond_1
    :goto_0
    if-le v2, v3, :cond_2

    if-ltz v1, :cond_2

    invoke-direct {p0, v1, v2, v10}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v6

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    invoke-virtual {v6, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v2, v9, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    return-void
.end method

.method private fillToGalleryRight(II)V
    .locals 11

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v10

    sub-int v2, v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    move v8, p1

    const/4 v5, 0x0

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v3, p2, v9

    const/4 v7, 0x0

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    if-gt v3, v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_0
    move v1, p2

    const/4 v0, 0x0

    if-eqz v7, :cond_1

    add-int/lit8 v1, p2, 0x1

    add-int v0, v8, v4

    :cond_1
    :goto_0
    if-ge v0, v2, :cond_2

    if-ge v1, v6, :cond_2

    const/4 v9, 0x1

    invoke-direct {p0, v1, v0, v9}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    invoke-virtual {v5, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v0, v9, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private finishOverScrollMode()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    const v1, 0x469c4000

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x4396

    mul-float/2addr v1, v2

    float-to-int v0, v1

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    const-string v2, "rotationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private getCenterOfView(Landroid/view/View;)I
    .locals 4

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v2, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    return v2
.end method

.method private judgeFocusIndex()V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfGallery()I

    move-result v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v3

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    if-ne v9, v10, :cond_1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    move v5, v4

    sub-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v3, :cond_0

    move v3, v8

    move v7, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    if-ne v9, v10, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    div-int/lit8 v9, v4, 0x3

    add-int v5, v4, v9

    sub-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v3, :cond_2

    move v3, v8

    move v7, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    if-ne v9, v10, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    div-int/lit8 v9, v4, 0x3

    sub-int v5, v4, v9

    sub-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v3, :cond_4

    move v3, v8

    move v7, v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    return-void
.end method

.method private makeAndAddView(IIZ)Landroid/view/View;
    .locals 19

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1, v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->measureView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    move/from16 v17, v0

    add-int v7, v10, v17

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    if-eqz p3, :cond_2

    move/from16 v8, p2

    add-int v9, v8, v11

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    div-int/lit8 v18, v15, 0x2

    sub-int v16, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    div-int/lit8 v18, v12, 0x2

    sub-int v13, v17, v18

    add-int v3, v8, v16

    add-int v4, v3, v15

    add-int v5, v10, v13

    add-int v2, v5, v12

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/view/View;->layout(IIII)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    return-object v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1, v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    sub-int v8, p2, v11

    move/from16 v9, p2

    goto :goto_1
.end method

.method private measureView(Landroid/view/View;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mWidthMeasureSpec:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mHeightMeasureSpec:I

    if-eqz v9, :cond_1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mWidthMeasureSpec:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mHeightMeasureSpec:I

    :cond_1
    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    :cond_2
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v9, :cond_3

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    if-lt v9, v10, :cond_7

    const/high16 v3, 0x4000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :cond_3
    :goto_1
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v11, :cond_8

    const/high16 v3, -0x8000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :cond_4
    :goto_2
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v9, :cond_5

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    if-lt v9, v10, :cond_9

    const/high16 v0, 0x4000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_5
    :goto_3
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v9, v11, :cond_a

    const/high16 v0, -0x8000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_6
    :goto_4
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_7
    const/high16 v3, -0x8000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_1

    :cond_8
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v12, :cond_4

    const/high16 v3, 0x4000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_2

    :cond_9
    const/high16 v0, -0x8000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_3

    :cond_a
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v9, v12, :cond_6

    const/high16 v0, 0x4000

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_4
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->calculateScale()V

    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->judgeFocusIndex()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v4

    add-int v2, v3, v4

    sub-int v0, v2, v1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startUsingDistance(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->onFinishedMovement()V

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v7

    add-int v3, v6, v7

    const v2, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_0
    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-gt v6, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, v3, :cond_1

    move v5, v4

    :cond_0
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v2, :cond_2

    move v2, v1

    move v5, v4

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private trackMotionOverScroll(I)V
    .locals 9

    const/high16 v8, 0x4120

    const/high16 v7, -0x3ee0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    if-ne v2, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v2, :cond_5

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    int-to-float v3, p1

    const v4, 0x3da3d70a

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_2

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_3

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    :cond_3
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_4

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_7

    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_4

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getChildDrawingOrder(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-eqz p1, :cond_0

    add-int/lit8 v3, v5, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v6, p2

    :goto_1
    return v6

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v2, v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    add-int v4, v7, v8

    if-eqz p1, :cond_2

    if-gt v2, v4, :cond_3

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_2
    if-lt v2, v4, :cond_3

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_3
    sub-int v0, v4, v2

    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1
.end method

.method public layoutchildren(II)V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    if-lt p1, v12, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v12

    add-int/lit8 p1, v12, -0x2

    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v13

    add-int v6, v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSideWidthFrame:I

    sub-int v5, v3, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v12

    sub-int v9, v12, v5

    add-int v10, v3, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    add-int v0, v12, v11

    add-int/lit8 v8, p1, 0x3

    add-int/lit8 v12, v4, -0x2

    if-ne p1, v12, :cond_1

    move v8, v4

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v12

    if-eqz v12, :cond_2

    if-le p1, v4, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    move v7, p1

    :goto_2
    if-ge v7, v8, :cond_5

    const/4 v12, 0x1

    invoke-direct {p0, v7, v9, v12}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    add-int v9, v10, v12

    add-int v10, v9, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v13

    sub-int v2, v12, v13

    div-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v11

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    invoke-virtual {v1, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->calculateScale()V

    goto :goto_1
.end method

.method public measureChildren(II)[I
    .locals 18

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x2

    sub-int v4, v12, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mWidthMeasureSpec:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mHeightMeasureSpec:I

    int-to-float v0, v14

    move/from16 v16, v0

    const v17, 0x3d408312

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    move/from16 v16, v0

    mul-int v16, v16, v11

    sub-int v16, v5, v16

    div-int/lit8 v16, v16, 0x7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSideWidthFrame:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSideWidthFrame:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x0

    sub-int v16, v16, v17

    div-int v16, v16, v3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v0, v6

    move/from16 v16, v0

    const/high16 v17, 0x3fc0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    const/high16 v16, -0x8000

    move/from16 v0, v16

    if-eq v0, v13, :cond_0

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v14, :cond_4

    :cond_0
    move v9, v14

    :cond_1
    :goto_0
    const/high16 v16, -0x8000

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v6, :cond_6

    :cond_2
    move v8, v6

    :cond_3
    :goto_1
    move/from16 v0, p1

    invoke-static {v9, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v15

    move/from16 v0, p2

    invoke-static {v8, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    const/16 v16, 0x0

    aput v15, v10, v16

    const/16 v16, 0x1

    aput v7, v10, v16

    return-object v10

    :cond_4
    const/high16 v16, 0x4000

    move/from16 v0, v16

    if-eq v0, v13, :cond_5

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v14, :cond_1

    :cond_5
    move v9, v14

    goto :goto_0

    :cond_6
    const/high16 v16, 0x4000

    move/from16 v0, v16

    if-eq v0, v13, :cond_7

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v14, :cond_3

    :cond_7
    move v8, v6

    goto :goto_1
.end method

.method public onFling(F)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    if-ne v3, v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v1, 0xbb8

    const v3, 0x3f99999a

    div-float v3, p1, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    neg-float v3, v3

    float-to-int v3, v3

    if-ge v3, v1, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    neg-float v3, v3

    float-to-int v3, v3

    neg-int v4, v1

    if-le v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const v3, -0x3ac48000

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    neg-float v4, v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startUsingVelocity(I)V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    invoke-interface {v3, v0, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    goto :goto_0

    :cond_3
    const v3, 0x453b8000

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    goto :goto_1
.end method

.method public onOverScroll(II)Z
    .locals 3

    const/high16 v1, -0x4000

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionOverScroll(I)V

    const/4 v1, 0x0

    return v1
.end method

.method public onScroll(II)Z
    .locals 4

    const/4 v2, 0x1

    neg-int v0, p1

    if-gez v0, :cond_2

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    if-eq v3, v2, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    if-ne v3, v2, :cond_4

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    if-lez v0, :cond_3

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_0

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->scrollToPosition(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->performItemClick(Landroid/view/View;IJ)Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    :cond_1
    :goto_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->access$1500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->scrollIntoSlots()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 6

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->sortChildView()Ljava/util/ArrayList;

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

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

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
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->access$1500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_0

    :cond_2
    if-eqz p2, :cond_4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    add-int v1, v4, v5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v0, v4, 0x1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v0, 0x0

    :cond_3
    sub-int v4, p1, v0

    mul-int v2, v4, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    neg-int v5, v2

    const/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startUsingDistance(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-gt p1, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->requestdetachAllViewsFromParent(IZ)V

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_7

    :cond_5
    invoke-virtual {p0, p1, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->layoutchildren(II)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->postInvalidate()V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->layoutchildren(II)V

    goto :goto_1
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

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

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

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

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

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

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
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-gez p1, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLimitedMotionScrollAmount(ZI)I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->offsetChildrenLeftAndRight(I)V

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    add-int/lit8 v6, v3, -0x1

    add-int/2addr v6, v0

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->fillToGalleryRight(II)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->setSelectionToCenterChild()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->detachChild()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v8

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    invoke-interface {v6, v1, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwGalleryEx;III)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->fillToGalleryLeft(II)V

    goto :goto_2
.end method
