.class public Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
.super Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.source "TwPaperLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;
    }
.end annotation


# static fields
.field private static final MIN_TOP_MARGIN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TwPaperLayoutController"

.field private static final TIME_ON_FLING:I = 0x190


# instance fields
.field private final MAX_DEGREE_OF_OVERSCROLL:F

.field private mDegreeOfOverScrollView:F

.field private mDestPositionOnFling:I

.field mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

.field private mFinishTiltAni:Landroid/animation/AnimatorSet;

.field private mFlickAniset:Landroid/animation/AnimatorSet;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mIsOnAnimation:Z

.field private mIsOnFling:Z

.field private mIsOverScroll:Z

.field private mMagneticAniset:Landroid/animation/AnimatorSet;

.field private mMagneticDuration:I

.field private mOverScrollItem:Landroid/view/View;

.field private mScrollState:I

.field private mScrollsensitive:F

.field private mSelectView:Landroid/view/View;

.field private mSelectedPosition:I

.field private mSpacing:I

.field private mTopMarginRatio:F

.field private mVerticalSpace:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollsensitive:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mTopMarginRatio:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticDuration:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->MAX_DEGREE_OF_OVERSCROLL:F

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->setCachingSize(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->detachChild()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    return v0
.end method

.method private cancelMagneticAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private cancelTiltAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private detachChild()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v2, v3, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    return-void
.end method

.method private fillToGalleryLeft(II)V
    .locals 12

    const/4 v11, 0x0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v3

    move v9, p1

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v4, p2, v10

    const/4 v8, 0x0

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v10

    if-gt v4, v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :cond_0
    move v1, p2

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-eqz v8, :cond_1

    add-int/lit8 v1, p2, -0x1

    sub-int v2, v9, v5

    :cond_1
    :goto_0
    if-le v2, v3, :cond_2

    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v7

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    sub-int v10, v2, v10

    invoke-direct {p0, v7, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v10

    invoke-virtual {v10, v7, v11, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getLeft()I

    move-result v10

    sub-int v2, v10, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int/2addr v10, v0

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    return-void
.end method

.method private fillToGalleryLeftOnFlingByX(I)V
    .locals 23

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v19

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    move/from16 v20, v0

    add-int v7, v19, v20

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v20, p1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v9

    add-int/lit8 v15, v19, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_2

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_1

    const/4 v5, 0x0

    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    int-to-float v0, v7

    move/from16 v22, v0

    aput v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v19, 0x190

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v20, 0x4020

    int-to-float v0, v11

    move/from16 v21, v0

    const v22, 0x3dcccccd

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    neg-int v0, v14

    move/from16 v19, v0

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->setX(F)V

    goto/16 :goto_1

    :cond_1
    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    mul-int v22, v11, v18

    add-int v22, v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v19, 0x190

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const v20, 0x3f666666

    int-to-float v0, v11

    move/from16 v21, v0

    const v22, 0x3ca3d70a

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v17, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelTiltAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    move-object/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x190

    const/16 v22, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->makeFinishTiltAnimation(Landroid/view/View;FII)Landroid/animation/AnimatorSet;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    return-void
.end method

.method private fillToGalleryRight(II)V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    sub-int v4, v12, v13

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    move v11, p1

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v5, p2, v12

    const/4 v10, 0x0

    if-ltz v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v12

    if-gt v5, v12, :cond_0

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    :cond_0
    move/from16 v2, p2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    if-eqz v10, :cond_1

    add-int/lit8 v2, p2, 0x1

    add-int v1, v11, v6

    :cond_1
    :goto_0
    if-ge v1, v4, :cond_2

    if-ge v2, v9, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v8, v13, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getRight()I

    move-result v12

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v1, v12, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillToGalleryRightOnFlingByX(I)V
    .locals 25

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v17

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v21

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    move/from16 v22, v0

    add-int v7, v21, v22

    add-int/lit8 v21, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, p1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v16, v0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v21, v0

    add-int v21, v21, v9

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v5, 0x0

    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x1

    int-to-float v0, v7

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v21, 0x190

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v21, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v22, 0x4020

    int-to-float v0, v12

    move/from16 v23, v0

    const v24, 0x3dcccccd

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-direct/range {v21 .. v22}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v21

    const/16 v22, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    int-to-float v0, v15

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->setX(F)V

    goto/16 :goto_1

    :cond_1
    const-string v21, "x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x1

    mul-int v24, v12, v20

    add-int v24, v24, v15

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v21, 0x190

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v21, Landroid/view/animation/DecelerateInterpolator;

    const v22, 0x3f666666

    int-to-float v0, v12

    move/from16 v23, v0

    const v24, 0x3ca3d70a

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    invoke-direct/range {v21 .. v22}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v19, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v21

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v21, v0

    add-int/lit8 v22, v17, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v11

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelTiltAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    move-object/from16 v21, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x190

    const/16 v24, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->makeFinishTiltAnimation(Landroid/view/View;FII)Landroid/animation/AnimatorSet;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    return-void
.end method

.method private finishOverScrollMode()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    const-string v2, "rotationY"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private layoutChildViewInFrame(Landroid/view/View;I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->measureChildView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    add-int v1, v2, v3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private makeFinishTiltAnimation(Landroid/view/View;FII)Landroid/animation/AnimatorSet;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v3, "rotationY"

    new-array v4, v7, [F

    aput p2, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-string v3, "rotationY"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v3, p3

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    int-to-long v3, p3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v3, p4

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private measureChildView(Landroid/view/View;)Z
    .locals 8

    const/high16 v7, 0x4000

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/high16 v4, -0x8000

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->setView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_4

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :cond_2
    :goto_1
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :cond_3
    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v6, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    :cond_5
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startMagneticAnimation(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;)Z
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelMagneticAnimation()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    move/from16 v18, v0

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v6

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v24

    add-int v5, v24, v18

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getCenterOfGallery()I

    move-result v13

    const/4 v10, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v24

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v24, v24, v18

    move/from16 v0, v24

    int-to-float v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v14, v24, v9

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    :cond_0
    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_1
    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v11

    const/16 v20, 0x0

    sget-object v24, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getCenterOfView(Landroid/view/View;)I

    move-result v7

    move/from16 v16, v13

    sub-int v24, v16, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v11, :cond_2

    move/from16 v11, v23

    move/from16 v20, v17

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    sget-object v24, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getLeft()I

    move-result v7

    div-int/lit8 v24, v13, 0x3

    add-int v16, v13, v24

    sub-int v24, v16, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v11, :cond_4

    move/from16 v11, v23

    move/from16 v20, v17

    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_5
    sget-object v24, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getRight()I

    move-result v7

    div-int/lit8 v24, v13, 0x3

    sub-int v16, v13, v24

    sub-int v24, v16, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v11, :cond_6

    move/from16 v11, v23

    move/from16 v20, v17

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_7
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v0, v6, :cond_b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v10

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const-string v24, "x"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v10, v25, v26

    const/16 v26, 0x1

    int-to-float v0, v5

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_9
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    const-string v24, "x"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v10, v25, v26

    const/16 v26, 0x1

    aput v14, v25, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    const-string v24, "x"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v10, v25, v26

    const/16 v26, 0x1

    aput v15, v25, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v24, Landroid/animation/AnimatorSet;

    invoke-direct/range {v24 .. v24}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    new-instance v25, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/AnimatorSet;->start()V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method private trackMotionOverScroll(I)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x4120

    const/high16 v5, -0x3ee0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v2, :cond_4

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    int-to-float v3, p1

    const v4, 0x3da3d70a

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_6

    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2
.end method


# virtual methods
.method getLimitedMotionScrollAmount(ZI)I
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    if-eqz p1, :cond_0

    add-int/lit8 v3, v6, -0x1

    :goto_0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    sub-int v9, v3, v9

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    move v8, p2

    :goto_1
    return v8

    :cond_0
    move v3, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v2, v9, v10

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    add-int v5, v9, v10

    if-eqz p1, :cond_2

    if-gt v2, v5, :cond_3

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_2
    if-lt v2, v5, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    goto :goto_1

    :cond_3
    sub-int v0, v5, v2

    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1
.end method

.method public layoutchildren(II)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-le p1, v1, :cond_0

    const-string v7, "TwPaperLayoutController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutchildren : Invalid positoion, position is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    invoke-virtual {v0, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    goto :goto_0
.end method

.method public measureChildren(II)[I
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x2

    new-array v5, v9, [I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v10

    add-int v3, v9, v10

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v10

    add-int v4, v9, v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    add-int/lit16 v9, v4, 0xc8

    if-lt v6, v9, :cond_0

    add-int/lit16 v9, v3, 0xc8

    if-ge v7, v9, :cond_1

    :cond_0
    const-string v9, "TwPaperLayoutController"

    const-string v10, "measureChildren : Too small size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-gez v2, :cond_2

    invoke-static {v7, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    aput v9, v5, v12

    :goto_0
    if-gez v1, :cond_3

    invoke-static {v6, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    aput v9, v5, v11

    :goto_1
    aget v9, v5, v11

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mTopMarginRatio:F

    mul-float/2addr v9, v10

    float-to-int v8, v9

    const/16 v9, 0x64

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    sub-int/2addr v9, v4

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    sub-int/2addr v9, v3

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    return-object v5

    :cond_2
    aput v7, v5, v12

    goto :goto_0

    :cond_3
    aput v6, v5, v11

    goto :goto_1
.end method

.method public onFling(F)Z
    .locals 14

    const v13, -0x3a63c000

    const/high16 v12, -0x3b86

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v8, v7, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v9

    long-to-float v9, v9

    div-float v4, v8, v9

    const/high16 v8, 0x3f00

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    const-string v8, "TwPaperLayoutController"

    const-string v9, "onFling : Cancel the animation and operate next flick"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    cmpg-float v8, p1, v11

    if-gez v8, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_2

    move v6, v7

    :cond_1
    :goto_0
    return v6

    :cond_2
    cmpl-float v8, p1, v11

    if-lez v8, :cond_3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    int-to-float v6, v6

    const/high16 v8, 0x4000

    div-float v5, v6, v8

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    cmpl-float v6, p1, v12

    if-ltz v6, :cond_4

    const/high16 v6, 0x447a

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_4

    move v6, v7

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    const v6, -0x39e3c000

    cmpg-float v6, p1, v6

    if-gez v6, :cond_a

    const/16 v3, 0xe

    :cond_5
    :goto_1
    const v6, 0x461c4000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_11

    const/16 v3, 0xe

    :cond_6
    :goto_2
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-ne v6, v7, :cond_7

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelMagneticAnimation()V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    const/4 v6, 0x2

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    :cond_8
    cmpg-float v6, p1, v11

    if-gez v6, :cond_18

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryRightOnFlingByX(I)V

    :cond_9
    :goto_3
    move v6, v7

    goto :goto_0

    :cond_a
    const v6, -0x39e3c000

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_b

    const v6, -0x39eb9000

    cmpg-float v6, p1, v6

    if-gez v6, :cond_b

    const/16 v3, 0xc

    goto :goto_1

    :cond_b
    const v6, -0x39eb9000

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_c

    const v6, -0x39f36000

    cmpg-float v6, p1, v6

    if-gez v6, :cond_c

    const/16 v3, 0xa

    goto :goto_1

    :cond_c
    const v6, -0x39f36000

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_d

    const/high16 v6, -0x3a06

    cmpg-float v6, p1, v6

    if-gez v6, :cond_d

    const/16 v3, 0x8

    goto :goto_1

    :cond_d
    const/high16 v6, -0x3a06

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_e

    const v6, -0x3a254000

    cmpg-float v6, p1, v6

    if-gez v6, :cond_e

    const/4 v3, 0x6

    goto :goto_1

    :cond_e
    const v6, -0x3a254000

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_f

    const v6, -0x3a448000

    cmpg-float v6, p1, v6

    if-gez v6, :cond_f

    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_f
    const v6, -0x3a448000

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_10

    cmpg-float v6, p1, v13

    if-gez v6, :cond_10

    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_10
    cmpl-float v6, p1, v13

    if-ltz v6, :cond_5

    cmpg-float v6, p1, v12

    if-gez v6, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_11
    const v6, 0x461c4000

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_12

    const v6, 0x46147000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_12

    const/16 v3, 0xc

    goto/16 :goto_2

    :cond_12
    const v6, 0x46147000

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_13

    const v6, 0x460ca000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_13

    const/16 v3, 0xa

    goto/16 :goto_2

    :cond_13
    const v6, 0x460ca000

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_14

    const/high16 v6, 0x45fa

    cmpl-float v6, p1, v6

    if-lez v6, :cond_14

    const/16 v3, 0x8

    goto/16 :goto_2

    :cond_14
    const/high16 v6, 0x45fa

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_15

    const v6, 0x45dac000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_15

    const/4 v3, 0x6

    goto/16 :goto_2

    :cond_15
    const v6, 0x45dac000

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_16

    const v6, 0x45bb8000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_16

    const/4 v3, 0x4

    goto/16 :goto_2

    :cond_16
    const v6, 0x45bb8000

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_17

    const v6, 0x459c4000

    cmpl-float v6, p1, v6

    if-lez v6, :cond_17

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_17
    const v6, 0x459c4000

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_6

    const/high16 v6, 0x447a

    cmpl-float v6, p1, v6

    if-lez v6, :cond_6

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_18
    cmpl-float v6, p1, v11

    if-lez v6, :cond_9

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryLeftOnFlingByX(I)V

    goto/16 :goto_3
.end method

.method public onOverScroll(II)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollsensitive:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->trackMotionOverScroll(I)V

    goto :goto_0
.end method

.method public onScroll(II)Z
    .locals 5

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-eq v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v3, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    neg-int v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    if-gez v0, :cond_3

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    if-ne v3, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-lez v0, :cond_2

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->performItemClick(Landroid/view/View;IJ)Z

    return v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->finishOverScrollMode()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    :goto_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->startMagneticAnimation(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;)Z

    goto :goto_1
.end method

.method public scrollToPosition(IZ)V
    .locals 0

    return-void
.end method

.method trackMotionScroll(I)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    if-gez p1, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLimitedMotionScrollAmount(ZI)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->offsetChildrenLeftAndRight(I)V

    if-eqz v5, :cond_2

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v6, v0

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getRight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryRight(II)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->detachChild()V

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_0

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

    :cond_0
    return-void

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryLeft(II)V

    goto :goto_1
.end method
