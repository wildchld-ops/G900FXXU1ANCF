.class public Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;,
        Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final COLLAPSEALL_BASE_SPEED:F = 0.5f

.field private static final DEBUG_GROUP:Z = false

.field private static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static GROUP_START_PREV:I = 0x0

.field private static final GROUP_STATE_SETS:[[I = null

.field private static INDICATOR_TRANS_DURATION_MAX:F = 0.0f

.field private static final ITEM_ANIMATION_OFFSET:F = 0.5f

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final MAX_SCROLL_DURATION:I = 0x4

.field private static final OFFSET_FOR_SLIDE:F = 0.5f

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL

.field private static final ROTATION_AXIS:I = 0x2

.field private static final ROTATION_DEPTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwExpandableListView"

.field private static final TIME_DIFF_BETWEEN_ITEM_ANIMATION:I = 0x258

.field private static final TIME_ONE_ITEM_FRAME_ANIMATION:I = 0x32


# instance fields
.field private COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

.field private DEBUG_TW_EXP_LIST:Z

.field private EXPAND_COLLAPSE_TOTAL_TIME:F

.field private EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mBufferExpandAllAnimation:I

.field private mCancelFromWindowFocusChange:Z

.field private mCancelOngoingAnimations:Z

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field private mCollapseAllChildBaseSpeedFactor:F

.field mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

.field private final mFadeInAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

.field private final mFadeOutAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

.field mFooterGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;",
            ">;"
        }
    .end annotation
.end field

.field mGroupFlatPos:I

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mGroupIndicatorRotateAngle:I

.field mGroupPos:I

.field private mGroupsAdded:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewHeight:I

.field private mHeightOfChildItem:I

.field private mHeightOfGroupItem:I

.field private final mIndicatorCollapsingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

.field private final mIndicatorExpandingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field mInvalidatingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

.field private mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

.field private final mTranslateCollapsingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

.field private final mTranslateExpandingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

.field private mVisibleGroupCount:I

.field mposMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

.field shouldCorrectHeightAfterAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->INDICATOR_TRANS_DURATION_MAX:F

    sput v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_START_PREV:I

    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v3, [I

    aput v3, v1, v2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput v5, v1, v2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    aput v4, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v1, 0x430c

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapseAllChildBaseSpeedFactor:F

    const/16 v1, 0xb4

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupsAdded:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelOngoingAnimations:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelFromWindowFocusChange:Z

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mInvalidatingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

    invoke-direct {v1, p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFadeOutAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFadeInAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

    invoke-direct {v1, p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslateExpandingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslateCollapsingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    invoke-direct {v1, p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorExpandingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorCollapsingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shouldCorrectHeightAfterAnimation:Z

    sget-object v1, Landroid/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const-string v1, "TwExpandableListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwExpandableListView constructor - dividerExists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->dividerExists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelFromWindowFocusChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkAnimationBuffer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelOngoingAnimations:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    return v0
.end method

.method static synthetic access$500()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    return-object v0
.end method

.method private adjustListSize(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setFrame(IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAnimationBuffer()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandAll()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dividerExists()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expandCollapseAllWithoutAnimation(Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    return-void
.end method

.method private fillAnimationDataForGroups(Z)V
    .locals 23

    const/16 v17, -0x1

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    :cond_0
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    if-nez v13, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    goto :goto_0

    :cond_3
    if-nez v4, :cond_5

    :cond_4
    :goto_3
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    iget-boolean v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v5

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    sub-int v21, v5, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v19, v20, v21

    :goto_4
    add-int/lit8 v20, v5, -0x1

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v2, v19, v20

    if-eqz p1, :cond_9

    mul-int v20, v18, v3

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v21, v0

    mul-int v21, v21, v18

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-le v2, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v20

    sub-int v20, v20, v2

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    :goto_5
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V

    :cond_6
    :goto_6
    iget-boolean v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    add-int v18, v18, v20

    goto/16 :goto_2

    :cond_7
    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    sub-int v21, v5, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v19, v20, v21

    goto :goto_4

    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    mul-int v20, v18, v3

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v21, v0

    mul-int v21, v21, v18

    add-int v20, v20, v21

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_5

    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_6

    :cond_b
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_c

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    :goto_7
    const/4 v8, 0x0

    const/4 v12, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v21

    sub-int v15, v20, v21

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v20

    if-nez v20, :cond_f

    :cond_c
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v15, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    if-nez v13, :cond_15

    :cond_d
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_f
    const/16 v16, 0x0

    if-nez v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    :goto_b
    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    add-int/lit8 v11, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v9

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    mul-int v20, v20, v11

    sub-int v21, v9, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v12, v20, v21

    :cond_10
    :goto_c
    add-int/lit8 v20, v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v21

    mul-int v20, v20, v21

    add-int v7, v12, v20

    mul-int v20, v18, v3

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    move/from16 v21, v0

    mul-int v21, v21, v18

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-le v7, v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v20

    sub-int v20, v20, v7

    move/from16 v0, v20

    iput v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->viewHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dividerHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->listHeight:I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->configureAnimationSpeed(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v12, v12, v20

    :cond_11
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    goto/16 :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    mul-int v20, v20, v11

    sub-int v21, v9, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v12, v20, v21

    goto/16 :goto_c

    :cond_14
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v10, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    goto :goto_d

    :cond_15
    iget-boolean v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_17

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V

    :cond_16
    :goto_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_d

    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimationCompletionTime:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v14, v13

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->computeAnimationOffsetForChildren(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)V

    goto :goto_e

    :cond_18
    if-eqz v14, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v14, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    goto/16 :goto_3
.end method

.method private findAnimatingItemsToExpand()I
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTotalHeadersHeight()I

    move-result v18

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v14

    if-eqz v10, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v7, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v18, v18, v20

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v20

    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v20

    if-nez v20, :cond_1

    if-lez v4, :cond_1

    const/4 v10, 0x1

    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v4, :cond_5

    move/from16 v0, v18

    if-ge v0, v13, :cond_4

    add-int v20, v3, v5

    add-int v18, v18, v20

    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    goto/16 :goto_0

    :cond_3
    const/16 v20, 0x0

    goto :goto_2

    :cond_4
    move v12, v9

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    add-int v15, v15, v20

    if-eqz v2, :cond_9

    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_a

    move/from16 v16, v15

    :goto_5
    return v16

    :cond_7
    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    if-lez v20, :cond_8

    const/16 v20, 0x1

    :goto_6
    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    goto :goto_4

    :cond_8
    const/16 v20, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v9, v12, 0x1

    :goto_7
    move/from16 v0, v19

    if-ge v9, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v14

    if-eqz v10, :cond_b

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    :cond_b
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    iget v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    add-int v15, v15, v20

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    goto :goto_8

    :cond_d
    move/from16 v16, v15

    goto/16 :goto_5
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J
    .locals 3

    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    sget-object v4, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->CHILD_LAST_STATE_SET:[I

    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7

    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6

    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4

    const-wide/high16 v2, -0x8000

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalHeadersHeight()I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private handleCollapseAllAnimation()Z
    .locals 42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v38

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v38, v0

    if-eqz v38, :cond_0

    const-string v38, "TwExpandableListView"

    const-string v39, "returning from handleCollapseAllAnimation 1"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v38, 0x0

    :goto_0
    return v38

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->stopFlingAndScroll()V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v9

    const/16 v29, 0x0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    if-nez v22, :cond_2

    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v38, v0

    add-int v29, v29, v38

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapseAllChildBaseSpeedFactor:F

    if-lez v37, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapseAllChildBaseSpeedFactor:F

    move/from16 v38, v0

    const/high16 v39, 0x3f80

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v40, v40, v41

    add-float v39, v39, v40

    mul-float v10, v38, v39

    :cond_4
    const/high16 v15, 0x3f80

    mul-float v14, v10, v15

    const/16 v38, 0x0

    cmpl-float v38, v14, v38

    if-nez v38, :cond_5

    const v14, 0x3dcccccd

    :cond_5
    const-wide/16 v12, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    if-nez v22, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, v22

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v38

    sub-int v20, v38, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_6

    if-nez v8, :cond_b

    mul-int/lit8 v38, v25, 0x3

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    :goto_5
    add-long v30, v30, v27

    if-nez v8, :cond_c

    const-wide/16 v32, 0x0

    :goto_6
    if-eqz v25, :cond_9

    sget-object v38, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    const/16 v40, 0x0

    int-to-float v0, v5

    move/from16 v41, v0

    aput v41, v39, v40

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    const-wide/16 v38, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    int-to-long v0, v6

    move-wide/from16 v38, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v38, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-int/lit8 v38, v37, -0x1

    move/from16 v0, v25

    move/from16 v1, v38

    if-ne v0, v1, :cond_8

    if-nez v8, :cond_8

    new-instance v35, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    invoke-virtual/range {v34 .. v35}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->dividerExists()Z

    move-result v38

    if-eqz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mInvalidatingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v38, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_8
    const/16 v38, 0x2

    const/16 v39, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual/range {v34 .. v34}, Landroid/animation/ObjectAnimator;->start()V

    :cond_9
    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    if-ge v0, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v16

    const/16 v38, -0x1

    move/from16 v0, v16

    move/from16 v1, v38

    if-eq v0, v1, :cond_a

    if-nez v9, :cond_d

    :cond_a
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :cond_b
    const-wide/16 v27, 0x0

    goto/16 :goto_5

    :cond_c
    move-wide/from16 v32, v30

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v38

    sub-int v17, v38, v24

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v38

    move/from16 v0, v38

    neg-int v0, v0

    move/from16 v38, v0

    sub-int v38, v38, v23

    move/from16 v0, v38

    int-to-float v11, v0

    int-to-float v0, v5

    move/from16 v38, v0

    add-float v38, v38, v11

    move/from16 v0, v38

    float-to-int v5, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v38

    div-float v38, v38, v14

    move/from16 v0, v38

    float-to-long v12, v0

    int-to-long v0, v6

    move-wide/from16 v38, v0

    add-long v38, v38, v12

    move-wide/from16 v0, v38

    long-to-int v6, v0

    sget-object v38, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    aput v41, v39, v40

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v38, 0x2

    div-long v38, v12, v38

    sub-long v38, v30, v38

    move-wide/from16 v0, v38

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v38, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v38, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    const/16 v40, 0x0

    int-to-float v0, v5

    move/from16 v41, v0

    aput v41, v39, v40

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    const-wide/16 v38, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    int-to-long v0, v6

    move-wide/from16 v38, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v38, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-long v38, v12, v27

    add-long v30, v30, v38

    add-int/lit8 v38, v37, -0x1

    move/from16 v0, v25

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    add-int/lit8 v38, v8, -0x1

    move/from16 v0, v26

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    new-instance v35, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;

    const/16 v38, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    invoke-virtual/range {v34 .. v35}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->dividerExists()Z

    move-result v38

    if-eqz v38, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mInvalidatingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v38, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_e
    const/16 v38, 0x2

    const/16 v39, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual/range {v34 .. v34}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_8

    :cond_f
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    sub-long v38, v30, v32

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v38

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z

    goto/16 :goto_4

    :cond_10
    const/16 v38, 0x1

    goto/16 :goto_0
.end method

.method private handleExpandAllAnimation()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, "TwExpandableListView"

    const-string v19, "returning from handleExpandAllAnimation"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v18

    if-nez v18, :cond_2

    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->stopFlingAndScroll()V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v18

    sub-int v11, v18, v7

    add-int/lit8 v10, v11, 0x1

    iget v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v18, v0

    add-int v12, v11, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    move v15, v10

    :goto_3
    if-gt v15, v12, :cond_5

    sub-int v18, v15, v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    sub-int v18, v15, v10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v5, v9, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAllChildren(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)Z

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAllGroups(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)Z

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAnimationForExpandAllFooters()V

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    const/16 v17, 0x0

    if-nez v6, :cond_8

    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    :cond_7
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    :cond_8
    :goto_6
    iget v0, v13, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isAlreadyExpandedDuringExpandAll(I)Z

    move-result v18

    if-nez v18, :cond_9

    int-to-float v0, v6

    move/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto :goto_6

    :cond_b
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private handleExpandCollapseAnimationWithAllItemsAdded()Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->onInitAnimations()V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAnimationType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandAllAnimation()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleCollapseAllAnimation()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAnimationType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleSingleExpandCollapseAnimation(Z)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleSingleExpandCollapseAnimation(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v3, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->numberOfAnimationItems:I

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->lastItem:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    sub-int v2, v4, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    sub-int v0, v2, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerFadeInOutAnimation(IIZ)V

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerListItemTranslateAnimation(IIZ)V

    invoke-direct {p0, v3, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerGroupIndicatorRotationAnimation(IZ)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->lastItem:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->numberOfItems:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->numberOfAnimationItems:I

    sub-int/2addr v5, v6

    sub-int v2, v4, v5

    goto :goto_0
.end method

.method private isAlreadyExpandedDuringExpandAll(I)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->initiallyFullyExpandedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isAnimationTypeExpandOrCollapse()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lastAnimatingFooterIndex()I
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v1

    :cond_1
    move v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onInitAnimations()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelOngoingAnimations:Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelFromWindowFocusChange:Z

    return-void
.end method

.method private printLayerType(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LAYER_TYPE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "LAYER_TYPE_SOFTWARE"

    goto :goto_0

    :pswitch_2
    const-string v0, "LAYER_TYPE_HARDWARE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetAnimationStates()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetViewAnimationProperties()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->reset()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetChanged()V

    return-void
.end method

.method private scrollToHeaderAtTheTop(Z)V
    .locals 15

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v0

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lt v12, v4, :cond_3

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v12, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    add-int/2addr v12, v0

    mul-int v10, v4, v12

    move v11, v10

    iget-object v12, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    sub-int v6, v3, v4

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v5, v12, v3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    mul-int/2addr v12, v6

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    mul-int/2addr v13, v5

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    :cond_0
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTop()I

    move-result v13

    sub-int v2, v12, v13

    mul-int v12, v6, v0

    add-int/2addr v12, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int v7, v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    div-int v1, v7, v12

    add-int/lit8 v1, v1, 0x1

    if-eqz p1, :cond_4

    const/4 v9, 0x2

    :goto_1
    if-lez v7, :cond_5

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v13, 0x0

    mul-int/lit8 v14, v1, 0x1

    invoke-virtual {v12, v9, v7, v13, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    :goto_2
    return-void

    :cond_1
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    mul-int/2addr v12, v6

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    mul-int/2addr v13, v5

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    goto :goto_0

    :cond_2
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    mul-int/2addr v12, v6

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    mul-int/2addr v13, v5

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    goto :goto_0

    :cond_3
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    add-int/2addr v13, v0

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_2
.end method

.method private setAnimationForExpandAllChildren(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;I)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-boolean v7, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    if-eqz v7, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    aput v2, v8, v5

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationDuration()F

    move-result v7

    float-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getRotationOffsetForChild(I)F

    move-result v7

    float-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v7, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    if-eqz v7, :cond_1

    iget v7, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    if-ne v7, p3, :cond_1

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->dividerExists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startInvalidatingListener(J)V

    :cond_1
    iget-boolean v7, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    if-eqz v7, :cond_2

    invoke-virtual {p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationStartPositionForChild(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v6, [F

    invoke-virtual {p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationEndPositionForChild(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v5

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDurationForChild(I)F

    move-result v5

    float-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationOffsetForChild(I)F

    move-result v5

    float-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    move v5, v6

    goto/16 :goto_0
.end method

.method private setAnimationForExpandAllFooters()V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v5

    sub-int v3, v4, v5

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFooterGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v5

    float-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private setAnimationForExpandAllGroups(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v4, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupStartTranslationPosition:I

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v3, [F

    iget v6, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupEndTranslationPosition:I

    int-to-float v6, v6

    aput v6, v5, v2

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->getTranslationDuration()F

    move-result v2

    float-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-boolean v2, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->hasLastAnimatingItem:Z

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->lastAnimatingItem:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemExpandCollapseAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    move v2, v3

    goto :goto_0
.end method

.method private setChildItemHeight()V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setGroupItemHeight()V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setIndicatorAnimation(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;FJ)Z
    .locals 23

    if-nez p1, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-static/range {v19 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    instance-of v0, v5, Landroid/widget/FrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object v10, v5

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_1

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_8

    instance-of v0, v11, Landroid/widget/LinearLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v16, v11

    check-cast v16, Landroid/widget/LinearLayout;

    :cond_1
    if-eqz v16, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    :cond_2
    const/4 v6, 0x0

    if-eqz v12, :cond_3

    const/high16 v18, 0x900

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    :cond_3
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, "TwExpandableListView"

    const-string v19, "setIndicatorAnimation...imageView supplied by application.."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v7, v6

    :cond_5
    :goto_1
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v14, v0

    :goto_2
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v3, v18, v19

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v4, v18, v19

    new-instance v2, Landroid/view/animation/RotateAnimation;

    invoke-direct {v2, v15, v14, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff199999999999aL

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    sget-object v18, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    invoke-virtual {v7, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const-string v18, "TwExpandableListView"

    const-string v19, "setIndicatorAnimation...imageView not supplied by application.."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v10, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v16, v17

    check-cast v16, Landroid/widget/LinearLayout;

    :cond_b
    if-eqz v16, :cond_5

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v14, v0

    goto/16 :goto_2
.end method

.method private startInvalidatingListener(J)V
    .locals 2

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mInvalidatingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private triggerCorrectTooHighAnimation()V
    .locals 14

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v1

    add-int/lit8 v8, v10, -0x1

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getWidth()I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v10

    const/high16 v11, -0x8000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v9, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->measure(II)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v10, v11

    sub-int v0, v2, v6

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-lez v0, :cond_0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_0

    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    if-nez v10, :cond_4

    new-instance v10, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v10, v13, v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0
.end method

.method private triggerFadeInOutAnimation(IIZ)V
    .locals 22

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    if-eqz p3, :cond_0

    const/high16 v9, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v4, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v16, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v6

    const/4 v5, 0x0

    const-wide/16 v17, 0x0

    move/from16 v10, p1

    :goto_1
    move/from16 v0, p2

    if-gt v10, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v19, "TwExpandableListView"

    const-string v20, " View is null: View number calculation is not-correct or someother: check"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    const/high16 v13, 0x3f80

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v16, v0

    goto :goto_0

    :cond_1
    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v12, 0x0

    if-eqz p3, :cond_6

    sub-int v12, v10, p1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAnimatedChildrenCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_7

    const/4 v11, 0x1

    :goto_4
    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v16

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-long v14, v0

    if-eqz v6, :cond_8

    move/from16 v0, v16

    float-to-long v7, v0

    :goto_5
    if-eqz p3, :cond_2

    move/from16 v0, p2

    if-eq v10, v0, :cond_3

    :cond_2
    if-nez p3, :cond_4

    move/from16 v0, p1

    if-ne v10, v0, :cond_4

    :cond_3
    add-long v17, v14, v7

    :cond_4
    invoke-virtual {v5, v13}, Landroid/view/View;->setAlpha(F)V

    sget-object v19, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v19, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v11, :cond_5

    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFadeOutAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

    move-object/from16 v19, v0

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_2

    :cond_6
    sub-int v12, p2, v10

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mFadeInAnimListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemFadeInOutAnimationListener;

    move-object/from16 v19, v0

    goto :goto_6

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->dividerExists()Z

    move-result v19

    if-eqz v19, :cond_b

    add-int/lit8 v19, p2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startInvalidatingListener(J)V

    :cond_b
    return-void
.end method

.method private triggerGroupIndicatorRotationAnimation(IZ)V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    if-eqz p2, :cond_8

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f00

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v27, v0

    add-float v9, v26, v27

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->expandingGroup:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v27

    sub-int v8, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->collapsingGroup:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v26

    sub-int v7, v26, v10

    const/16 v20, 0x0

    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v20

    :goto_1
    add-int v26, v20, v10

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/FrameLayout;

    :cond_0
    if-eqz v15, :cond_1

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v23, v24

    check-cast v23, Landroid/widget/LinearLayout;

    :cond_1
    if-eqz v15, :cond_2

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v23, v25

    check-cast v23, Landroid/widget/LinearLayout;

    :cond_2
    if-eqz v23, :cond_3

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    :cond_3
    const/4 v13, 0x0

    if-eqz v19, :cond_4

    const/high16 v26, 0x900

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    :cond_4
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    const-string v26, "TwExpandableListView"

    const-string v27, "setIndicatorAnimation...imageView supplied by application.."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v14, v13

    :cond_6
    :goto_2
    const/16 v22, 0x0

    const/16 v21, 0x0

    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v22, v0

    :goto_3
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v11, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v12, v0

    const/high16 v26, 0x4000

    div-float v5, v11, v26

    const/high16 v26, 0x4000

    div-float v6, v12, v26

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_e

    const v26, 0x3f4ccccd

    mul-float v26, v26, v9

    move/from16 v0, v26

    float-to-long v2, v0

    :goto_4
    new-instance v4, Landroid/view/animation/RotateAnimation;

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    long-to-double v0, v2

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff199999999999aL

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    sget-object v26, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorExpandingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    move-object/from16 v26, v0

    :goto_5
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    if-nez p2, :cond_10

    const/16 v26, 0x1

    :goto_6
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    invoke-virtual {v14, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    return-void

    :cond_8
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f00

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v27, v0

    add-float v9, v26, v27

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v20

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    const-string v26, "TwExpandableListView"

    const-string v27, "setIndicatorAnimation...imageView not supplied by application.."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v15, :cond_c

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v26, v0

    if-eqz v26, :cond_c

    move-object/from16 v23, v25

    check-cast v23, Landroid/widget/LinearLayout;

    :cond_c
    if-eqz v23, :cond_6

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v21, v0

    goto/16 :goto_3

    :cond_e
    const v26, 0x3f666666

    mul-float v26, v26, v9

    move/from16 v0, v26

    float-to-long v2, v0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorCollapsingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorAnimationListener;

    move-object/from16 v26, v0

    goto/16 :goto_5

    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_6
.end method

.method private triggerListItemTranslateAnimation(IIZ)V
    .locals 24

    sub-int v21, p2, p1

    add-int/lit8 v15, v21, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->lastAnimatingFooterIndex()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v21

    sub-int v21, v6, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v22

    sub-int v21, v21, v22

    if-gtz v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->dividerExists()Z

    move-result v7

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    add-int/lit8 v21, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    :cond_2
    if-eqz p3, :cond_4

    move/from16 v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v16, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v21

    if-eqz v21, :cond_3

    int-to-float v0, v15

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-long v3, v0

    :cond_3
    const/4 v5, 0x0

    const/16 v17, 0x0

    add-int/lit8 v11, p2, 0x1

    :goto_2
    if-ge v11, v6, :cond_c

    add-int v21, v11, v10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v21, "TwExpandableListView"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Child at index ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") that needs to be translated does not exist"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move/from16 v20, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v16, v0

    goto :goto_1

    :cond_5
    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v21, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v20, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-nez p3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_6
    sget-object v21, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v7, :cond_7

    add-int/lit8 v21, p2, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mInvalidatingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_7
    if-nez v12, :cond_8

    add-int/lit8 v21, p2, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_8

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_9

    :cond_8
    if-eqz v12, :cond_a

    if-ne v11, v13, :cond_a

    :cond_9
    if-eqz p3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslateExpandingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

    move-object/from16 v21, v0

    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslateCollapsingListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$LastItemTranslateAnimationListener;

    move-object/from16 v21, v0

    goto :goto_4

    :cond_c
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    goto/16 :goto_0
.end method


# virtual methods
.method checkIfGroupCanAddChild(ILjava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_1

    iget v5, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v0, v5, v6

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v6, 0x2

    invoke-static {v6, p1, v7, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v0, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTotalChildrenAdded(ILjava/util/ArrayList;)I

    move-result v6

    add-int/2addr v6, v0

    mul-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public collapseAll()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandCollapseAll(Z)Z

    move-result v0

    return v0
.end method

.method public collapseGroup(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return v0
.end method

.method correctAnimatingItems()V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v7, 0x0

    move v9, v4

    const/4 v5, 0x0

    :goto_0
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    if-lez v9, :cond_0

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v12, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isGroupExpanded(I)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v13, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v1

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v12, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v8

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v12

    iget v13, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-interface {v12, v13}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    sub-int/2addr v9, v2

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    mul-int/2addr v12, v6

    sub-int v10, v9, v12

    if-gez v10, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    if-eqz v12, :cond_3

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    div-int v11, v9, v12

    :goto_1
    move v9, v10

    add-int/2addr v7, v11

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v12

    if-nez v12, :cond_2

    iget v12, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-ge v12, v11, :cond_2

    iput v11, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v11, v6

    goto :goto_1
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    if-eqz v8, :cond_1

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v2, :cond_0

    const-string v2, "TwExpandableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDraw State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eqz v2, :cond_3

    :goto_0
    if-nez v0, :cond_2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 8

    const/high16 v7, 0x437f

    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v3, p3, v5

    if-ltz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v6, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v5, v6, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public expandAll()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandCollapseAll(Z)Z

    move-result v0

    return v0
.end method

.method public expandCollapseAll(Z)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v6

    sub-int v1, v5, v6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-gtz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandCollapseAllWithoutAnimation(Z)V

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v5, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v4, :cond_4

    const-string v4, "TwExpandableListView"

    const-string v5, "expandCollapseAll returned false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p1, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBufferExpandAllAnimation:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->stopFlingAndScroll()V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Call setAdapter(ExpandableListAdapter) before expandAll/collapseAll"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandCollapseAllWithoutAnimation(Z)V

    move v3, v4

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    if-ne v3, v7, :cond_8

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setGroupItemHeight()V

    :cond_8
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    if-ne v3, v7, :cond_9

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setChildItemHeight()V

    :cond_9
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v3, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollToHeaderAtTheTop(Z)V

    :goto_1
    move v3, v4

    goto/16 :goto_0

    :cond_a
    if-eqz p1, :cond_b

    const/4 v2, 0x2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto :goto_1

    :cond_b
    const/4 v2, 0x3

    goto :goto_2
.end method

.method public expandGroup(I)Z
    .locals 6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v0, v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getChildItemAnimationEnabled()Z

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    move-result v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandableListAnimationEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    invoke-interface {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_1
    return v3

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(I)Z

    move-result v3

    goto :goto_0
.end method

.method fillGapExpandableList(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int v4, v5, v6

    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingTop()I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-lez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v4, v5, v6

    :goto_2
    const/4 v0, 0x1

    :goto_3
    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    :try_start_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillUp(II)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getListPaddingBottom()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_2

    :catch_0
    move-exception v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method fillGroup(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findLastGroupToAddChild(ILjava/util/ArrayList;)I

    move-result v0

    move p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method findAnimatingItemsToCollapse()I
    .locals 22

    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLastVisiblePosition()I

    move-result v13

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v16

    if-nez v16, :cond_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v19

    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    if-lez v3, :cond_2

    add-int/lit8 v19, v6, 0x1

    sub-int v19, v19, v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v4

    sub-int v11, v13, v5

    if-lt v11, v4, :cond_2

    sub-int v19, v11, v4

    add-int/lit8 v18, v19, 0x1

    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v19, v0

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    :cond_2
    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v19, v0

    add-int v14, v14, v19

    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    :cond_3
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->dump()V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v19, v0

    mul-int v2, v14, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v19, v0

    div-int v15, v2, v19

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v19, v0

    add-int/lit8 v10, v19, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_6

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v7

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const-string v19, "DEBUG_COLLAPSE"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Step 1: findAnimatingItemsToCollapse: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " getCount() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->addUpcomingCollapseGroup(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v12, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v19, v0

    add-int/lit8 v10, v19, 0x1

    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v7

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isExpandingOrCollapsing:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->isTranslating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const-string v19, "DEBUG_COLLAPSE"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Step 1.1: Adding footer to CollapseALL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " getCount() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " childCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_8
    return v14
.end method

.method findAnimatingItemsToExpand(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v1, :cond_1

    const-string v1, "TwExpandableListView"

    const-string v2, "findAnimatingItems nothing to expand/collapse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findFirstExpandingGroup(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillGroup(ILjava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->correctAnimatingItems()V

    goto :goto_0
.end method

.method findFirstExpandingGroup(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->findFirstExpandingGroup(Ljava/util/ArrayList;III)V

    :cond_0
    return-void
.end method

.method findLastGroupToAddChild(ILjava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, p1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->checkIfGroupCanAddChild(ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->updateVisibleGroups(ILjava/util/ArrayList;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method findNumberOfCollapseAnimatingItems(II)I
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, p1, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v3, v5, v6

    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_2
    if-lez v1, :cond_3

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    :cond_3
    if-le v4, p2, :cond_4

    move v4, p2

    :cond_4
    move v5, v4

    goto :goto_0
.end method

.method findNumberOfExpandAnimatingItems(I)I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    mul-int/2addr v4, p1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v6

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    move v1, p1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    if-le v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    sub-int v3, v4, v5

    int-to-float v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method findVisibleGroups(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v8

    sub-int v0, v7, v8

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    if-ne v7, v9, :cond_0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setGroupItemHeight()V

    :cond_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    if-ne v7, v9, :cond_1

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setChildItemHeight()V

    :cond_1
    const/4 v4, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, v3

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v7

    iget-object v8, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v8, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->createGroup(IZ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-result-object v2

    iput v1, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->totalChildren:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v5, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findAnimatingItemsToExpand()I

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandCollapseAllWithoutAnimation(Z)V

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v7, :cond_4

    const-string v7, "TwExpandableListView"

    const-string v8, "findVisibleGroups current anim state is ANIMATION_FINISHED"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startExpansionAll()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findAnimatingItemsToCollapse()I

    move-result v6

    if-nez v6, :cond_6

    invoke-direct {p0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandCollapseAllWithoutAnimation(Z)V

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v7, :cond_4

    const-string v7, "TwExpandableListView"

    const-string v8, "findVisibleGroups current anim state is ANIMATION_FINISHED"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->startCollapsingAll()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eqz v4, :cond_0

    :goto_0
    if-nez v1, :cond_1

    move v3, p2

    :goto_1
    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    add-int v0, p2, v4

    add-int/lit8 v4, p1, -0x1

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    if-nez v4, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupsAdded:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    :goto_2
    iget-object v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    if-ltz v4, :cond_5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupsAdded:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, p1, -0x1

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupsAdded:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mVisibleGroupCount:I

    add-int v3, p2, v4

    goto :goto_1
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v1, 0xffffffffL

    :goto_0
    return-wide v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v3

    iget-object v4, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    goto :goto_0
.end method

.method public getSelectedId()J
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method getTotalChildrenAdded(ILjava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    invoke-virtual {v3, v4, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getVisibileGroupPresentInExpandingList(ILjava/util/ArrayList;)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    add-int/2addr v0, v3

    :cond_0
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    if-lt p1, v3, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v0, :cond_1

    const-string v0, "TwExpandableListView"

    const-string v1, "Expand All returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v10

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v9

    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupPos:I

    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupFlatPos:I

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mposMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildOrGroupId(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)J

    move-result-wide p3

    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwrapViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    move v10, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->collapseGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_4
    :goto_1
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    :cond_5
    iget-object v0, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v7, v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    move-result v0

    if-nez v0, :cond_6

    move v10, v6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwrapViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget-object v1, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v4, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move-object v1, p0

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;->onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z

    move-result v10

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected layoutChildren()V
    .locals 23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const-string v20, "TwExpandableListView"

    const-string v21, "layoutChildren Item Count and Adapter Count is not equal"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v20

    if-lez v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    if-lez v20, :cond_4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_4

    instance-of v0, v12, Landroid/widget/FrameLayout;

    move/from16 v20, v0

    if-nez v20, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeaderViewHeight:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    iget v0, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v8

    iget v0, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    add-int v20, v20, v8

    add-int/lit8 v15, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;

    iget v0, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->animatingChildren:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    iget v0, v11, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$Group;->groupId:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForChildPos(II)I

    move-result v9

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v9, v0, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->visibleGroups:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfGroupItem:I

    move/from16 v20, v0

    mul-int v20, v20, v16

    sub-int v21, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v19, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v20

    mul-int v20, v20, v15

    add-int v3, v19, v20

    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v3, v3, v20

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v21

    sub-int v13, v20, v21

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v3, v3, v20

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getTop()I

    move-result v20

    add-int v3, v3, v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    const-string v20, "DEBUG_COLLAPSE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Step 2: bottom: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "orig_bottom: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v20

    move/from16 v0, v20

    if-le v3, v0, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->adjustListSize(I)Z

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    const/4 v13, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_c

    const-string v20, "DEBUG_COLLAPSE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Step 3: Before Layout height of: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_c
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_d

    const-string v20, "DEBUG_COLLAPSE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Step 4: After Layout height of: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillAnimationDataForGroups(Z)V

    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleExpandCollapseAnimationWithAllItemsAdded()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const-string v20, "TwExpandableListView"

    const-string v21, "layoutChildren current anim state is ANIMATION_ADDED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-eqz v20, :cond_11

    :cond_10
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->numberOfAnimationItems:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    if-lez v5, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupFlatPos:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v21

    add-int v20, v20, v21

    mul-int v18, v17, v20

    add-int v3, v3, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getBottom()I

    move-result v20

    move/from16 v0, v20

    if-le v3, v0, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->adjustListSize(I)Z

    :cond_15
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v10

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v10, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlatPosForGroupPos(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v2, v20, v21

    if-ltz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v2, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v20

    if-lez v20, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isGroupExpanded(I)Z

    move-result v20

    if-eqz v20, :cond_17

    add-int/lit8 v20, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_17

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    const-string v20, "TwExpandableListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "(newly added) mHeightOfChildItem: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isAnimationTypeExpandOrCollapse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isAnimationTypeExpandOrCollapse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isAnimationTypeExpandOrCollapse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelOngoingAnimations:Z

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v8, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v0, v6, 0xff

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v6, :cond_3

    const-string v6, "TwExpandableListView"

    const-string v7, "Animation in progress, Scroll/fling blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v0, v8, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->removePendingCallbacks()V

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->hideSelector()V

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z

    if-eqz v5, :cond_6

    const-string v5, "TwExpandableListView"

    const-string v6, "Animation NOT in progress,Scroll/fling Allow"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidate()V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationState(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isAnimationType(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget-boolean v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isExpandOrCollapseAll:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAllAnimation()V

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelFromWindowFocusChange:Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapsingAllAnimation()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isAlphaAnimationOver:Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v3, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isIndicatorAnimationOver:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAnimationItemIndex()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapseAnimationItemIndex()V

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->unwrapViews(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-super {p0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method resetViewAnimationProperties()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCancelOngoingAnimations:Z

    return-void
.end method

.method scrollExpandableList(I)Z
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    const/16 v26, 0x1

    :goto_0
    return v26

    :cond_0
    const/4 v8, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1

    const/16 v26, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    const/4 v8, 0x0

    add-int/lit8 v26, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    const/16 v26, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v19

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v22, v26, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v11, v26, v27

    sub-int v23, v19, v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v27, v0

    sub-int v16, v26, v27

    if-gez p1, :cond_4

    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez p1, :cond_5

    const/4 v10, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeaderViewsCount()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFooterViewsCount()I

    move-result v27

    sub-int v14, v26, v27

    const/16 v24, 0x0

    const/4 v9, 0x0

    if-eqz v10, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v26, p1

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_6

    :cond_3
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    :cond_7
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-lez v9, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->detachViewsFromParent(II)V

    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->offsetChildrenTopAndBottom(I)V

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v26, v0

    add-int v26, v26, v9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isInTouchMode()Z

    move-result v18

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_a

    move/from16 v0, v23

    if-ge v0, v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->fillGapExpandableList(Z)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidate()V

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    if-ltz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->positionSelector(ILandroid/view/View;)V

    :cond_c
    :goto_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->awakenScrollBars()Z

    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v9, v9, 0x1

    add-int v21, v12, v17

    move/from16 v0, v21

    if-lt v0, v15, :cond_3

    move/from16 v0, v21

    if-ge v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v26

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    sub-int v4, v26, p1

    add-int/lit8 v17, v6, -0x1

    :goto_6
    if-ltz v17, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_10

    :cond_f
    :goto_7
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v4, :cond_7

    move/from16 v24, v17

    add-int/lit8 v9, v9, 0x1

    add-int v21, v12, v17

    move/from16 v0, v21

    if-lt v0, v15, :cond_f

    move/from16 v0, v21

    if-ge v0, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    if-ltz v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    const/16 v26, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5
.end method

.method public scrollTo(Landroid/view/View;IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mHeightOfChildItem:I

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v8

    add-int/2addr v8, v1

    mul-int v4, p3, v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v5, v3, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    if-nez v8, :cond_1

    new-instance v8, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-direct {v8, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    :cond_1
    if-ge v5, v4, :cond_4

    sub-int v8, v3, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDividerHeight()I

    move-result v9

    sub-int v0, v8, v9

    if-le v4, v0, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v4, v8, v9

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-virtual {v8, v7, v4, p4, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    sub-int v9, v5, v4

    invoke-virtual {v8, v7, v9, p4, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v8, v7, v9, p4, v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mClipChildDivider:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I

    return-void
.end method

.method public setCollapseAllSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const p1, 0x3dcccccd

    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x40a0

    :cond_1
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapseAllChildBaseSpeedFactor:F

    return-void
.end method

.method public setCollapseSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const p1, 0x3dcccccd

    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x40a0

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    return-void
.end method

.method public setExpandAllSpeedFactor(F)V
    .locals 4

    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const p1, 0x3dcccccd

    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x4014

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/high16 p1, 0x40a0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setspeedFactor(F)V

    return-void
.end method

.method public setExpandSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const p1, 0x3dcccccd

    :cond_0
    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x40a0

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_TOTAL_TIME:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_TOTAL_TIME_FOR_ITEM_ANIMATION:F

    return-void
.end method

.method public setExpandableListAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setChildItemAnimationFlag(Z)V

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setGroupIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a8

    const v2, 0x10100a9

    new-array v3, v5, [I

    aput v1, v3, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v5, [I

    aput v2, v3, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setGroupIndicatorRotationAngle(I)V
    .locals 2

    const/16 v1, 0xb4

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, -0xb4

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicatorRotateAngle:I

    goto :goto_0
.end method

.method public setIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I

    return-void
.end method

.method public setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnChildClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupClickListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4

    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getFlattenedPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->recycle()V

    iget-object v3, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    :cond_0
    return-void
.end method

.method protected shouldCorrectTooHigh()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shouldCorrectHeightAfterAnimation:Z

    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shouldCorrectHeightAfterAnimation:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shouldCorrectHeightAfterAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->shouldCorrectHeightAfterAnimation:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerCorrectTooHighAnimation()V

    :cond_0
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method triggerPreDraw(Landroid/view/View;)V
    .locals 5

    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->triggerPreDraw(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->onPreDraw()Z

    :cond_1
    return-void
.end method
