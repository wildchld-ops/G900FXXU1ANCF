.class public Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;,
        Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;
    }
.end annotation


# static fields
.field private static HISTORICAL_VELOCITY_COUNT:I = 0x0

.field private static INVALID_POINTER_ID:I = 0x0

.field private static final MOVE_DURATION:I = 0x96

.field private static final SWIPE_DURATION:I = 0x1c2

.field private static VELOCITY_UNITS:I

.field private static sAccelDecel:Landroid/view/animation/Interpolator;

.field private static sDecel:Landroid/view/animation/Interpolator;


# instance fields
.field private CROSS_FADE_DURATION:I

.field private mActivePointerId:I

.field private mCurrentFirstVisiblePos:I

.field private mCurrentLastVisiblePos:I

.field private mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mForegroundViewResId:I

.field private mForegroundViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mHistoricalVelocities:[F

.field private mHistoricalVelocityIndex:I

.field private mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPressed:Z

.field private mListOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field private mOnItemDeleteListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

.field private mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

.field private mPendingItemRemoval:Z

.field private mRestoreItemListener:Landroid/view/View$OnClickListener;

.field private mScaledTouchSlop:I

.field private mSwiping:Z

.field private mSwipingPosition:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewToRemoveFg:Landroid/view/View;

.field private mViewToRemovePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->INVALID_POINTER_ID:I

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sDecel:Landroid/view/animation/Interpolator;

    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->VELOCITY_UNITS:I

    const/4 v0, 0x4

    sput v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I

    sget v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I

    sget v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->INVALID_POINTER_ID:I

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentFirstVisiblePos:I

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentLastVisiblePos:I

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->CROSS_FADE_DURATION:I

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mRestoreItemListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mForegroundViewTouchListener:Landroid/view/View$OnTouchListener;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource ids should be positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mForegroundViewResId:I

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->setUndoRemovalAnimator(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->VELOCITY_UNITS:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I

    return p1
.end method

.method static synthetic access$1708(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->HISTORICAL_VELOCITY_COUNT:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->cancelRemoval(I)V

    return-void
.end method

.method static synthetic access$2000()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sDecel:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->pendingItemRemoval(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2200()I
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->INVALID_POINTER_ID:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->removeCachedBitmap()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->animateRemoval(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentFirstVisiblePos:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentFirstVisiblePos:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentLastVisiblePos:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mCurrentLastVisiblePos:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemovePosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->showForeground(Landroid/view/View;)V

    return-void
.end method

.method private animateRemoval(Landroid/view/View;)V
    .locals 12

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnItemDeleteListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "OnItemDeleteListener is not provided"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v9, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v9, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v1, v4, v3

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    if-ne v1, v8, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnItemDeleteListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;

    invoke-interface {v9, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;->onDelete(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->cancelRemoval(I)V

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->showForeground(Landroid/view/View;)V

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v9, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    invoke-direct {v9, p0, v7}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2
.end method

.method private cancelRemoval(I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-interface {v4, p1, v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweepStart(IF)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    const/high16 v6, 0x3f80

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xe1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$5;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;

    invoke-direct {v4, p0, v3, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$6;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;II)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private pendingItemRemoval(Landroid/view/View;I)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemoveFg:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mViewToRemovePosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    return-void
.end method

.method private removeCachedBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method private showForeground(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mDeletingItemBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getCrossFadeDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->CROSS_FADE_DURATION:I

    return v0
.end method

.method public getForegroundTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mForegroundViewTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRestoreItemListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mRestoreItemListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public setCrossFadeDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->CROSS_FADE_DURATION:I

    return-void
.end method

.method public setForegroundViewResId(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mForegroundViewResId:I

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z

    :cond_0
    return-void
.end method

.method public setOnItemDeleteListener(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnItemDeleteListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnItemDeleteListener;

    return-void
.end method

.method public setOnSweepListener(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    return-void
.end method
