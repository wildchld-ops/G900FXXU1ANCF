.class public Lcom/sec/android/touchwiz/widget/TwGridViewEx;
.super Landroid/widget/GridView;
.source "TwGridViewEx.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;,
        Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;
    }
.end annotation


# static fields
.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field public static final MAX_COLUMNS_NUM:I = 0x5

.field private static final MINIMUM_FLING_VELOCITY:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "GridViewEx"


# instance fields
.field private final MAX_PINCH_DISTANCE:F

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

.field private mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

.field private mCloneView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

.field private mCurrentAnimationProgress:F

.field private mCurrentSpan:F

.field private mEnableAlphaAnimation:Z

.field private mHorizontalSpacing:I

.field private mInvokeStartAnimation:Z

.field private mIsEnableSizeAnimation:Z

.field private mIsEnabledMoveAnimation:Z

.field private mIsLayouted:Z

.field private mIsNeedToRecoverColumNum:Z

.field private mIsNeedToRecoverScrollPos:Z

.field private mIsOnLayoutAnimation:Z

.field private mIsOnPinchOperation:Z

.field private mIsPinchFlicked:Z

.field private mLayoutAnimationDuration:I

.field private mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

.field private mMaxColumnCount:I

.field private mMoveAnimationDuration:I

.field private final mMoveAnimationThreshold:F

.field private mNeedToLayoutAnimation:Z

.field private mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

.field private final mPinchFlickThreadholdTime:J

.field private mPinchStartTime:J

.field private mPrevCulNum:I

.field private mPrevFirstIndex:I

.field private mPrevFirstViewTop:I

.field private mPrevSpan:F

.field private mRecoverLayoutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTouchCancelEvent:Landroid/view/MotionEvent;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationThreshold:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchFlickThreadholdTime:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->MAX_PINCH_DISTANCE:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationThreshold:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchFlickThreadholdTime:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->MAX_PINCH_DISTANCE:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationThreshold:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchFlickThreadholdTime:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->MAX_PINCH_DISTANCE:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->init()V

    return-void
.end method

.method private addCloneViewsInLayout(II)Z
    .locals 6

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, p1

    :goto_1
    if-ge v2, p2, :cond_3

    if-ge v2, v1, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v3, "GridViewEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showCurrentCloneViews : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item is not cloned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z
    .locals 12

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-direct/range {p0 .. p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v10

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_3

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    :cond_3
    if-nez v5, :cond_4

    invoke-direct/range {p0 .. p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v10

    goto :goto_0

    :cond_4
    const/4 v7, -0x1

    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v7, v10, :cond_7

    const/4 v2, 0x0

    const/4 v10, -0x1

    if-eq v7, v10, :cond_6

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, p3, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v8, :cond_5

    if-eqz v3, :cond_5

    move/from16 v0, p4

    invoke-direct {p0, v2, v8, v3, v0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move/from16 v0, p4

    invoke-direct {p0, v2, v8, v3, v0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move-object v2, v5

    goto :goto_2

    :cond_7
    const/4 v10, 0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ge v10, v9, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int v4, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, Landroid/view/View;->setRight(I)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v10, v6, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int v4, v6, v10

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, Landroid/view/View;->setBottom(I)V

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-array v1, v5, [F

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    aput v3, v1, v4

    new-array v0, v5, [F

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v3

    aput v3, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v0, v4

    invoke-direct {p0, p1, v1, v0, p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    move-result v2

    goto :goto_0
.end method

.method private createMoveAnimation(Landroid/view/View;[F[FI)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    array-length v6, p2

    if-lt v6, v7, :cond_2

    array-length v6, p3

    if-ge v6, v7, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    aget v2, p2, v5

    aget v0, p3, v5

    aget v3, p2, v4

    aget v1, p3, v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v5, p1, p4, v2, v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransXAnimation(Landroid/view/View;IFF)Z

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v5, p1, p4, v3, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransYAnimation(Landroid/view/View;IFF)Z

    goto :goto_0
.end method

.method private createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v3, v2, v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v1, v2, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v3

    int-to-float v6, v1

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createRightAnimation(Landroid/view/View;IFF)Z

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v3, v0, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v1, v0, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v3

    int-to-float v6, v1

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createBottomAnimation(Landroid/view/View;IFF)Z

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createRightAndBottomAnimation(Landroid/view/View;[I[II)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    array-length v5, p2

    if-lt v5, v6, :cond_3

    array-length v5, p3

    if-ge v5, v6, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    aget v5, p2, v4

    aget v6, p3, v4

    if-eq v5, v6, :cond_5

    aget v5, p2, v4

    aget v4, p2, v4

    sub-int v1, v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v2

    add-int v6, v2, v1

    int-to-float v6, v6

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createRightAnimation(Landroid/view/View;IFF)Z

    :cond_5
    aget v4, p2, v3

    aget v5, p3, v3

    if-eq v4, v5, :cond_1

    aget v4, p2, v3

    aget v5, p2, v3

    sub-int v1, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    int-to-float v5, v0

    add-int v6, v0, v1

    int-to-float v6, v6

    invoke-virtual {v4, p1, p4, v5, v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createBottomAnimation(Landroid/view/View;IFF)Z

    goto :goto_0
.end method

.method private createScaleAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "GridViewEx"

    const-string v4, "createScaleAnimation : start view hasn\'t be layouted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "GridViewEx"

    const-string v4, "createScaleAnimation : end view hasn\'t be layouted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-array v1, v6, [I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v5

    new-array v0, v6, [I

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v5

    invoke-direct {p0, p1, v1, v0, p4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;[I[II)Z

    move-result v2

    goto :goto_0
.end method

.method private createScaleAnimation(Landroid/view/View;[I[II)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;[I[IIZ)Z

    move-result v0

    return v0
.end method

.method private createScaleAnimation(Landroid/view/View;[I[IIZ)Z
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    array-length v7, p2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    array-length v7, p3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_3

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    aget v7, p2, v7

    int-to-float v5, v7

    const/4 v7, 0x0

    aget v7, p3, v7

    int-to-float v3, v7

    const/4 v7, 0x1

    aget v7, p2, v7

    int-to-float v4, v7

    const/4 v7, 0x1

    aget v7, p3, v7

    int-to-float v2, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v3, v9

    invoke-virtual {v7, p1, p4, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleXAnimation(Landroid/view/View;IFF)Z

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v2, v9

    invoke-virtual {v7, p1, p4, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleYAnimation(Landroid/view/View;IFF)Z

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    const/4 v7, 0x1

    if-ne p5, v7, :cond_5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v6, v7

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    if-ge v7, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroid/view/View;->setRight(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-ge v7, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v0, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroid/view/View;->setBottom(I)V

    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;
    .locals 6

    move-object v4, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, p2, :cond_4

    move-object v0, p1

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->findViewByIdRecursive(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getCloneView(I)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "GridViewEx"

    const-string v3, "getCloneView : Has no clone view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    goto :goto_0
.end method

.method private getView(II)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    mul-int v1, v0, p2

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    new-instance v2, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private makeLayoutAnimationList()Z
    .locals 46

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : on layout animation"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : Has no clone view"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v19

    if-nez v19, :cond_2

    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : Any child view is added"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v28

    const/4 v15, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v0, v3

    move/from16 v44, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v0, v3

    move/from16 v45, v0

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v23

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v43, v3, v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-lez v3, :cond_3

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getFirstVisiblePosition()I

    move-result v6

    if-ne v3, v6, :cond_4

    const/16 v37, 0x1

    :goto_2
    const/16 v32, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    if-nez v31, :cond_5

    const-string v3, "GridViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeLayoutAnimationList : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " item is not cloned"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_3
    const/16 v36, 0x0

    goto :goto_1

    :cond_4
    const/16 v37, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    move/from16 v24, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getView(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_c

    if-eqz v37, :cond_8

    if-nez v40, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v36, :cond_7

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v3, p0

    move-object v6, v4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v41, v41, 0x1

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v39, v0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    aput v6, v39, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    aput v6, v39, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v38, v0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v38, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v38, v3

    if-nez v36, :cond_a

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v8, p0

    move-object v9, v5

    move-object v10, v5

    move-object v11, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v6, v7, 0x2

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v6, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    :goto_8
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    move/from16 v0, v26

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v26

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    new-instance v16, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;-><init>(Landroid/view/View;[I[F)V

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    const/4 v13, 0x0

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v10, v7, 0x2

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    int-to-long v13, v7

    move-object v9, v5

    invoke-virtual/range {v8 .. v14}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFFJ)Z

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v28

    if-le v3, v0, :cond_11

    if-nez v26, :cond_f

    if-nez v27, :cond_f

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v42, v0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v42, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v42, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget v6, v42, v6

    move/from16 v0, v24

    int-to-float v8, v0

    mul-float v8, v8, v44

    add-float/2addr v6, v8

    aput v6, v29, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget v6, v42, v6

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move/from16 v0, v40

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    move/from16 v0, v43

    int-to-float v8, v0

    add-float/2addr v6, v8

    aput v6, v29, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v29

    invoke-direct {v0, v5, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    if-nez v36, :cond_e

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v8, p0

    move-object v9, v5

    move-object v10, v5

    move-object/from16 v11, v21

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    :goto_a
    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v5, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_d
    const/16 v26, 0x0

    const/16 v27, 0x0

    goto/16 :goto_6

    :cond_e
    const/4 v13, 0x0

    goto :goto_9

    :cond_f
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v42, v0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v42, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v42, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    move/from16 v0, v26

    int-to-float v6, v0

    aput v6, v29, v3

    const/4 v3, 0x1

    move/from16 v0, v27

    int-to-float v6, v0

    aput v6, v29, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v29

    invoke-direct {v0, v5, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    if-nez v36, :cond_10

    const/4 v13, 0x1

    :goto_b
    move-object/from16 v8, p0

    move-object v9, v5

    move-object v10, v5

    move-object/from16 v11, v21

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    goto :goto_a

    :cond_10
    const/4 v13, 0x0

    goto :goto_b

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    if-nez v3, :cond_13

    :cond_12
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_c
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_15

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v30, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    aput v6, v30, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    aput v6, v30, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v29, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v29, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    mul-int/lit8 v6, v7, 0x2

    div-int/lit8 v6, v6, 0x3

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    invoke-virtual {v3, v4, v6, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v3, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    instance-of v3, v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v11, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    goto/16 :goto_c

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v7, v6, v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v3, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createScaleAnimation(Landroid/view/View;[I[II)Z

    goto/16 :goto_c

    :cond_15
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v10, v7, 0x2

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    int-to-long v13, v7

    move-object v9, v4

    invoke-virtual/range {v8 .. v14}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFFJ)Z

    goto/16 :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v28

    if-le v3, v0, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v3, v3, v41

    move/from16 v0, v19

    if-ge v3, v0, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v32

    :goto_d
    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    invoke-virtual {v3, v4, v7, v6, v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v28

    if-ge v3, v0, :cond_1d

    const/16 v17, 0x0

    const/16 v35, 0x0

    const/16 v32, 0x0

    :goto_e
    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_1d

    const/4 v4, 0x0

    rem-int v3, v32, v28

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    sub-int v25, v3, v6

    if-ltz v25, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    div-int v20, v32, v28

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v29, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v29, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v42, v0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getWidth()I

    move-result v6

    add-int v6, v6, v35

    int-to-float v6, v6

    aput v6, v42, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget v6, v29, v6

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move/from16 v0, v20

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    move/from16 v0, v43

    int-to-float v8, v0

    sub-float/2addr v6, v8

    aput v6, v42, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v29

    invoke-direct {v0, v4, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v9, v4

    move-object/from16 v10, v23

    move-object v11, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v35, v35, v3

    :goto_f
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_e

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    div-int v20, v32, v28

    rem-int v18, v32, v28

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v29, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v29, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v29, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v42, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget v6, v29, v6

    invoke-static/range {v44 .. v44}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move/from16 v0, v18

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    aput v6, v42, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget v6, v29, v6

    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move/from16 v0, v20

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    move/from16 v0, v43

    int-to-float v8, v0

    sub-float/2addr v6, v8

    aput v6, v42, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v29

    invoke-direct {v0, v4, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    if-nez v36, :cond_1c

    const/4 v13, 0x1

    :goto_10
    move-object/from16 v8, p0

    move-object v9, v4

    move-object/from16 v10, v23

    move-object v11, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    const/4 v3, 0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v4, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1a

    const/4 v3, 0x1

    aget v3, v42, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    const v6, 0x3e99999a

    const/high16 v8, 0x3f80

    invoke-virtual {v3, v4, v7, v6, v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    add-int/lit8 v17, v17, 0x1

    const/16 v35, 0x0

    goto/16 :goto_f

    :cond_1c
    const/4 v13, 0x0

    goto :goto_10

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addCloneViewsInLayout(II)Z

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private makeNextMoveLayoutAnimationList()Z
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : on layout animation"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GridViewEx"

    const-string v6, "makeLayoutAnimationList : Has no clone view"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getFirstVisiblePosition()I

    move-result v6

    sub-int v16, v3, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMoveAnimationDuration:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v11

    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v20

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-lez v3, :cond_2

    const/16 v18, 0x1

    :goto_1
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    iget-object v3, v14, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v9

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    int-to-float v8, v10

    sub-float/2addr v6, v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v3, v4, v7, v6, v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransYAnimation(Landroid/view/View;IFF)Z

    add-int/lit8 v13, v13, 0x1

    :cond_4
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    sub-int v3, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v6, v8, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v18, :cond_7

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v3, p0

    move-object v6, v4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v19, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v19, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getHeight()I

    move-result v6

    mul-int v8, v20, v17

    add-int/2addr v6, v8

    int-to-float v6, v6

    aput v6, v19, v3

    const/4 v3, 0x2

    new-array v12, v3, [F

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v12, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v12, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1, v12, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    add-int/lit8 v3, v15, 0x1

    rem-int/2addr v3, v11

    if-nez v3, :cond_4

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    :cond_9
    const/16 v17, 0x0

    sub-int v15, v9, v13

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v15, v3, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    const/4 v3, 0x2

    new-array v12, v3, [F

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v12, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getHeight()I

    move-result v6

    mul-int v8, v20, v17

    add-int/2addr v6, v8

    int-to-float v6, v6

    aput v6, v12, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v19, v0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v19, v3

    const/4 v3, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v19, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1, v12, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v6}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    rem-int/2addr v3, v6

    if-nez v3, :cond_a

    add-int/lit8 v17, v17, 0x1

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_b
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_MOVE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private makePreMoveLayoutAnimationList()Z
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const-string v3, "GridViewEx"

    const-string v5, "makeLayoutAnimationList : on layout animation"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "GridViewEx"

    const-string v5, "makeLayoutAnimationList : Has no clone view"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v15

    if-nez v15, :cond_2

    const-string v3, "GridViewEx"

    const-string v5, "makeLayoutAnimationList : Any child view is added"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v19

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    div-int/lit8 v7, v3, 0x2

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v27, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v28, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v26, v3, v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnableSizeAnimation:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-lez v3, :cond_3

    const/16 v23, 0x1

    :goto_1
    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    if-nez v21, :cond_4

    const-string v3, "GridViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeLayoutAnimationList : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " item is not cloned"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getView(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    if-nez v23, :cond_6

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v3, p0

    move-object v5, v4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    move/from16 v0, v19

    if-le v3, v0, :cond_c

    if-nez v17, :cond_a

    if-nez v18, :cond_a

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v25, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v25, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v25, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, v25, v5

    move/from16 v0, v16

    int-to-float v8, v0

    mul-float v8, v8, v27

    add-float/2addr v5, v8

    aput v5, v20, v3

    const/4 v3, 0x1

    const/4 v5, 0x1

    aget v5, v25, v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move/from16 v0, v24

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    move/from16 v0, v26

    int-to-float v8, v0

    add-float/2addr v5, v8

    aput v5, v20, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    if-nez v23, :cond_9

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    :goto_7
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v4, v11, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createRightAndBottomAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    :cond_8
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    :cond_a
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v25, v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v25, v3

    const/4 v3, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v25, v3

    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v20, v0

    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v5, v0

    aput v5, v20, v3

    const/4 v3, 0x1

    move/from16 v0, v18

    int-to-float v5, v0

    aput v5, v20, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createMoveAnimation(Landroid/view/View;[F[FI)Z

    if-nez v23, :cond_b

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v4

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->createAnimationById(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Z

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    if-nez v3, :cond_e

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->addCloneViewsInLayout(II)Z

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    div-int/lit8 v5, v7, 0x2

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v5, v8, v9}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFF)Z

    goto/16 :goto_5
.end method

.method private playLayoutAnimation(Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    if-nez v3, :cond_0

    const-string v2, "GridViewEx"

    const-string v3, "playLayoutAnimation : GridView hasn\'t be layouted yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v3, v2, :cond_1

    const-string v2, "GridViewEx"

    const-string v3, "playLayoutAnimation : on Layout animation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v3

    if-ne v3, v2, :cond_2

    const-string v2, "GridViewEx"

    const-string v3, "playLayoutAnimation : Animation hasn\'t made yet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationStartPoint(Z)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-string v3, "GridViewEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animation size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    move v1, v2

    goto :goto_0
.end method

.method private playMoveLayoutAnimation(Z)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    if-nez v4, :cond_0

    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation : GridView hasn\'t be layouted yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v4, v3, :cond_1

    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation : on Layout animation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation : Animation hasn\'t made yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, p1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    sget-object v5, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_PINCH:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    if-ne v4, v5, :cond_3

    if-nez v1, :cond_3

    const-string v4, "GridViewEx"

    const-string v5, "playMoveLayoutAnimation: Current animation mode is pinch animation. Clear animation and make move animation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makeNextMoveLayoutAnimationList()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v3, "GridViewEx"

    const-string v4, "playMoveLayoutAnimation: Fail to make move animation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationStartPoint(Z)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-string v4, "GridViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animation size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    move v2, v3

    goto/16 :goto_0
.end method

.method private recoverPrevColNum()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-gez v2, :cond_0

    const-string v1, "GridViewEx"

    const-string v2, "recoverPrevColNum : Columns number to recover is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setSelection(I)V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithoutAnimation(I)V

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    move v0, v1

    goto :goto_0
.end method

.method private saveCurrentScrollProperty()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GridViewEx"

    const-string v4, "saveCurrentScrollProperty : empty view"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "GridViewEx"

    const-string v4, "saveCurrentScrollProperty : fail to find first visible view"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private scrapCurrentViews()Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "GridViewEx"

    const-string v5, "scrapCurrentView : Has no child view"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;

    rem-int v4, v2, v1

    div-int v5, v2, v1

    invoke-direct {v3, v0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;-><init>(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setLayoutAnimationProgress(F)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f80

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    :cond_0
    const-string v5, "GridViewEx"

    const-string v6, "setLayoutAnimationProgress : Invalid progress"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v6

    if-ne v6, v5, :cond_2

    const-string v5, "GridViewEx"

    const-string v6, "setLayoutAnimationProgress : Animation list is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    move-object v2, v0

    check-cast v2, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    int-to-float v4, v1

    mul-float/2addr v4, p1

    float-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    :cond_3
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->invalidate()V

    move v4, v5

    goto :goto_0
.end method

.method private setLayoutAnimationStartPoint(Z)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v4

    if-ne v4, v3, :cond_1

    const-string v3, "GridViewEx"

    const-string v4, "setLayoutAnimationProgress : Animation list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->getCurrentAnimationList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    if-ne p1, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->reversePoint()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartPoint()V

    goto :goto_0
.end method

.method private setNumColumnsWithAnimation(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "GridViewEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNumColumnsWithAnimation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    if-ge v2, p1, :cond_1

    const-string v1, "GridViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum columns number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v2, v1, :cond_2

    const-string v1, "GridViewEx"

    const-string v2, "setNumColumnsWithAnimation : On layout animation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v2

    if-eq v2, p1, :cond_0

    if-gtz p1, :cond_3

    const-string v1, "GridViewEx"

    const-string v2, "setNumColumnsWithAnimation : invalid columns number is requested"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->saveCurrentScrollProperty()Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->scrapCurrentViews()Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setSelection(I)V

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v4

    invoke-interface {v2, v3, v4, v0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;->onNumColumnsChanged(IIZ)V

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private setNumColumnsWithoutAnimation(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    if-ge v0, p1, :cond_1

    const-string v0, "GridViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum columns number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "GridViewEx"

    const-string v1, "setNumColumnsWithoutAnimation : On layout animation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentRealView()Z

    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private showCurrentCloneViews()Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GridViewEx"

    const-string v6, "Has not be cloned"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v5, "GridViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCurrentCloneViews : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item is not cloned"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private showCurrentRealView()Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCloneView:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getCloneView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "GridViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCurrentRealView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item is not cloned"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x43fa

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v5, v4, :cond_4

    :cond_1
    :goto_1
    return v4

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    const/high16 v7, 0x45fa

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    if-eq v5, v4, :cond_1

    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public enableAlphaAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mEnableAlphaAnimation:Z

    return-void
.end method

.method public enableMoveLayoutAnimationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v0, v1, :cond_0

    const-string v0, "GridViewEx"

    const-string v1, "layoutChildren : On layout animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    if-ne v0, v1, :cond_1

    const-string v0, "GridViewEx"

    const-string v1, "layoutChildren : Already animation are made"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 6

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentRealView()Z

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "GridViewEx"

    const-string v5, "onAnimationEnd : recoverPrevColNum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->recoverPrevColNum()Z

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    invoke-interface {v4, p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;->onAnimationEnd(Lcom/sec/android/touchwiz/widget/TwGridViewEx;)V

    :cond_3
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mRecoverLayoutMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentRealView()Z

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "GridViewEx"

    const-string v5, "onAnimationEnd : recoverPrevColNum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->recoverPrevColNum()Z

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    invoke-interface {v4, p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;->onAnimationEnd(Lcom/sec/android/touchwiz/widget/TwGridViewEx;)V

    :cond_3
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;->ANIMATION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationMode:Lcom/sec/android/touchwiz/widget/TwGridViewEx$ANIMATION_MODE;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;->onAnimationStart(Lcom/sec/android/touchwiz/widget/TwGridViewEx;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v1, v2, :cond_1

    const-string v1, "GridViewEx"

    const-string v2, "onLayout : On layout animation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsLayouted:Z

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    :cond_3
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstViewTop:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverScrollPos:Z

    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    if-ne v1, v2, :cond_7

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevFirstIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setSelection(I)V

    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentCloneViews()Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makePreMoveLayoutAnimationList()Z

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    if-ne v1, v2, :cond_6

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mNeedToLayoutAnimation:Z

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->showCurrentCloneViews()Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makeLayoutAnimationList()Z

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    if-ne v1, v2, :cond_6

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playLayoutAnimation(Z)Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    sub-long v6, v10, v12

    const/high16 v4, 0x4120

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x4248

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    cmpg-float v10, v8, v10

    if-gez v10, :cond_2

    const/high16 v10, 0x4248

    add-float/2addr v10, v8

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    :cond_0
    :goto_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    sub-float v2, v10, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    sub-float v1, v10, v11

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x4120

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    const/4 v9, 0x1

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    :cond_1
    :goto_1
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const-string v10, "GridViewEx"

    const-string v11, "onScale : on layout animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    :goto_2
    return v10

    :cond_2
    const/high16 v10, 0x4248

    sub-float v10, v8, v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    sget-object v11, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v10, v11, :cond_7

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    if-ne v0, v10, :cond_5

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v0, 0x1

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithAnimation(I)Z

    :cond_6
    :goto_3
    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    sget-object v11, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    if-ne v0, v10, :cond_8

    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    add-int/lit8 v10, v0, -0x1

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithAnimation(I)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    div-float v3, v2, v10

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-ge v10, v0, :cond_a

    sub-float/2addr v5, v3

    :goto_4
    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v10, 0x3f80

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const-wide/16 v10, 0x78

    cmp-long v10, v6, v10

    if-gez v10, :cond_b

    const-string v10, "GridViewEx"

    const-string v11, "onScale : On checking flick"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_2

    :cond_a
    add-float/2addr v5, v3

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-nez v10, :cond_c

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_c

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->recoverPrevColNum()Z

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->clear()V

    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentAnimationProgress:F

    goto :goto_3

    :cond_c
    const/high16 v10, 0x3e80

    cmpl-float v10, v5, v10

    if-lez v10, :cond_d

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->makeNextMoveLayoutAnimationList()Z

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    goto :goto_3

    :cond_d
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    goto :goto_3

    :cond_e
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setLayoutAnimationProgress(F)Z

    goto :goto_3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mTouchCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iget-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v8

    sub-long v3, v8, v6

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchStartTime:J

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mCurrentSpan:F

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevSpan:F

    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    sget-object v8, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPinchDirection:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v8, v10, :cond_0

    const-string v8, "GridViewEx"

    const-string v9, "onScaleEnd : On layout animation"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAnimationList:Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->isEmpty()Z

    move-result v8

    if-ne v8, v10, :cond_1

    const-string v8, "GridViewEx"

    const-string v9, "onScaleEnd : GridView hasn\'t be layouted. Invoke auto start flag to play animation after layout progress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v0

    const/4 v5, 0x0

    sget-object v8, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_OUT:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v2, v8, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-gt v0, v8, :cond_3

    :cond_2
    sget-object v8, Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;->DIRECTION_PINCH_IN:Lcom/sec/android/touchwiz/widget/TwGridViewEx$DIRECTION;

    if-ne v2, v8, :cond_4

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    if-ge v0, v8, :cond_4

    :cond_3
    const-string v8, "GridViewEx"

    const-string v9, "onScaleEnd : reverse animation"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_4
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsEnabledMoveAnimation:Z

    if-ne v8, v10, :cond_6

    if-ne v1, v10, :cond_5

    invoke-direct {p0, v11}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    const/4 v5, 0x0

    :goto_1
    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsPinchFlicked:Z

    :goto_2
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsNeedToRecoverColumNum:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playMoveLayoutAnimation(Z)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->playLayoutAnimation(Z)Z

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnLayoutAnimation:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mIsOnPinchOperation:Z

    if-eq v1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mAdapter:Landroid/widget/ListAdapter;

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setColumnChangeAnimationDuration(I)V
    .locals 2

    if-gtz p1, :cond_0

    const-string v0, "GridViewEx"

    const-string v1, "setColumnChangeAnimationDuration : Animation duration can\'t be shorter than 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationDuration:I

    goto :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mHorizontalSpacing:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setMaxNumColumns(I)V
    .locals 2

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const-string v0, "GridViewEx"

    const-string v1, "Maximum columns number couldn\'t be bigger than 5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mMaxColumnCount:I

    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithoutAnimation(I)V

    return-void
.end method

.method public setNumColumns(IZ)V
    .locals 4

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithAnimation(I)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mInvokeStartAnimation:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mPrevCulNum:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->getNumColumns()I

    move-result v2

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;->onNumColumnsChanged(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->setNumColumnsWithoutAnimation(I)V

    goto :goto_0
.end method

.method public setOnLayoutAnimationListener(Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mLayoutAnimationListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnLayoutAnimationListener;

    return-void
.end method

.method public setOnNumColumnsChangeListener(Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx;->mColumnsChangeListener:Lcom/sec/android/touchwiz/widget/TwGridViewEx$OnNumColumnsChangeListener;

    return-void
.end method
