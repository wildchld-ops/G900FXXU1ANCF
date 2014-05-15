.class public Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;
.super Landroid/widget/FrameLayout;
.source "XlargeTabScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;
    }
.end annotation


# static fields
.field static final INVALID_POSITION:I = -0x1

.field private static SCROLL_VIEW_ACTION_NONE:I

.field private static SCROLL_VIEW_ACTION_TAB_ADD:I

.field private static SCROLL_VIEW_ACTION_TAB_REMOVE:I

.field private static SCROLL_VIEW_ACTION_TAB_SELECT:I

.field private static SCROLL_VIEW_STATE_IDLE:I

.field private static SCROLL_VIEW_STATE_TAB_FLING:I

.field private static SCROLL_VIEW_STATE_TAB_LONG_PRESSED:I

.field private static SCROLL_VIEW_STATE_TAB_MOVE:I

.field private static SCROLL_VIEW_STATE_TAB_PRESSED:I

.field private static SCROLL_VIEW_STATE_TAB_SCROLL:I


# instance fields
.field private mAnimationDuration:I

.field private mDeleted:I

.field private mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field final mMaxStackCount:I

.field private mMoveTabIndex:I

.field private mScrollViewLastAction:I

.field private mScrollViewState:I

.field private mSelected:I

.field final mStackGap:I

.field private mTabMovePressedTabX:F

.field private mTabMoveTouchedXFrom:F

.field private mTabOverlap:I

.field private mTabWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_IDLE:I

    sput v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_PRESSED:I

    sput v3, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_SCROLL:I

    sput v4, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_LONG_PRESSED:I

    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_MOVE:I

    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_FLING:I

    sput v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_NONE:I

    sput v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_ADD:I

    sput v3, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_REMOVE:I

    sput v4, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_SELECT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMoveTouchedXFrom:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMovePressedTabX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mMoveTabIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mMaxStackCount:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mStackGap:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;-><init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMoveTouchedXFrom:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMovePressedTabX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mMoveTabIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mMaxStackCount:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mStackGap:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;-><init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMoveTouchedXFrom:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMovePressedTabX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mMoveTabIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mMaxStackCount:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mStackGap:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;-><init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_PRESSED:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnRight(IF)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_LONG_PRESSED:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMoveTouchedXFrom:F

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMovePressedTabX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->spreadTabButtonsOnBothSide(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_IDLE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_FLING:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_SCROLL:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IFZ)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(IFZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pushTabButtonsOnRight(IF)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnLeft(IF)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pushTabButtonsOnLeft(IF)V

    return-void
.end method

.method private animateScroll(I)V
    .locals 5

    const-string v1, "scroll"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getScrollX()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private calcTabButtonPosition()V
    .locals 11

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    const/4 v9, 0x1

    if-ge v7, v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseLeft()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseLeft()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getWidth()I

    move-result v1

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabOverlap:I

    sub-int v0, v1, v7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->isExceedScreen()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseWidth()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v9

    iget v10, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v0

    add-int/2addr v9, v1

    sub-int/2addr v7, v9

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ge v7, v8, :cond_6

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    :goto_0
    mul-int/lit8 v6, v7, 0xa

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v7

    if-ge v7, v6, :cond_2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    :cond_2
    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    mul-int/2addr v7, v0

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v10, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int/2addr v7, v10

    if-ge v7, v8, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget v10, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int/2addr v7, v10

    :goto_1
    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v1

    sub-int v6, v9, v7

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    if-le v7, v6, :cond_3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    :cond_3
    const/4 v3, 0x1

    :goto_2
    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ge v3, v7, :cond_a

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v2

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v7

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int/2addr v9, v3

    mul-int/2addr v9, v0

    sub-int/2addr v7, v9

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    if-ge v3, v8, :cond_8

    move v7, v3

    :goto_3
    mul-int/lit8 v6, v7, 0xa

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v7

    if-ge v7, v6, :cond_4

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    :cond_4
    mul-int v7, v0, v3

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v9

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int/2addr v7, v3

    if-ge v7, v8, :cond_9

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int/2addr v7, v3

    :goto_4
    mul-int/lit8 v7, v7, 0xa

    sub-int v6, v9, v7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    if-le v7, v6, :cond_5

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_0

    :cond_7
    move v7, v8

    goto :goto_1

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    move v7, v8

    goto :goto_4

    :cond_a
    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    add-int/lit8 v3, v7, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v3

    mul-int/2addr v9, v0

    add-int/2addr v9, v1

    sub-int/2addr v7, v9

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v9

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int v7, v3, v7

    if-ge v7, v8, :cond_d

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int v7, v3, v7

    :goto_6
    mul-int/lit8 v7, v7, 0xa

    add-int v6, v9, v7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v7

    if-ge v7, v6, :cond_b

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    :cond_b
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    sub-int v9, v3, v9

    mul-int/2addr v9, v0

    add-int/2addr v7, v9

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseWidth()I

    move-result v7

    sub-int v9, v7, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    if-ge v7, v8, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    :goto_7
    mul-int/lit8 v7, v7, 0xa

    sub-int v6, v9, v7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    if-le v7, v6, :cond_c

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    move v7, v8

    goto :goto_6

    :cond_e
    move v7, v8

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    move-object v4, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMaxX(I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setMinX(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method private changeTranslation(IFZ)F
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    move v0, p2

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v1, v3

    if-eqz p3, :cond_1

    add-float/2addr v0, v1

    :cond_1
    cmpl-float v3, p2, v2

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v2

    int-to-float v0, v2

    :cond_2
    :goto_1
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setTranslationX(F)V

    :cond_3
    sub-float v2, v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1

    :cond_5
    cmpl-float v2, p2, v2

    if-lez v2, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-float v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private ensureChildVisible(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private getBaseLeft()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getLeft()I

    move-result v0

    return v0
.end method

.method private getBaseRight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getBaseWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseRight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getMaxDistance()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabWidth:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabOverlap:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    goto :goto_0
.end method

.method private getTabWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabWidth:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabOverlap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabWidth:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setOverScrollMode(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;-><init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_IDLE:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_NONE:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    return-void
.end method

.method private isExceedScreen()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_1

    iget v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabOverlap:I

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getBaseWidth()I

    move-result v3

    if-le v0, v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private pullTabButtonsOnLeft(IF)V
    .locals 7

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt p1, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, p2

    const/4 v3, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    move v2, p1

    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    if-ltz v2, :cond_0

    move-object v3, v0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v6

    sub-float v4, v5, v6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v0, v1, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private pullTabButtonsOnRight(IF)V
    .locals 8

    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v5

    if-lt p1, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, p2

    const/4 v3, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    move v2, p1

    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    move-object v3, v0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v6

    sub-float v4, v5, v6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v4

    invoke-direct {p0, v0, v1, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private pushTabButtonsOnLeft(IF)V
    .locals 3

    move v0, p2

    move v1, p1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(IFZ)F

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pushTabButtonsOnRight(IF)V
    .locals 3

    move v0, p2

    move v1, p1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(IFZ)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private relocateTabButtonByAdd()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private relocateTabButtonByRemove()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnRight(IF)V

    :goto_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnLeft(IF)V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnRight(IF)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnLeft(IF)V

    goto :goto_1
.end method

.method private relocateTabButtonByRotate()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->relocateTabButtonByAdd()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    move-object v2, v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;FZ)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private spreadTabButtonsOnBothSide(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->spreadTabButtonsOnLeft(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->spreadTabButtonsOnRight(I)V

    return-void
.end method

.method private spreadTabButtonsOnLeft(I)V
    .locals 6

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    move v2, p1

    :goto_0
    if-ltz v2, :cond_0

    move-object v3, v0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v5

    sub-float v1, v4, v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(IFZ)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private spreadTabButtonsOnRight(I)V
    .locals 6

    const/4 v4, 0x1

    if-lt p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    move v2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    move-object v3, v0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v5

    sub-float v1, v4, v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(IFZ)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method addTab(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTabID()I

    move-result v3

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTabID()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    sget v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_ADD:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addTab(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method clearTabs()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->removeAllViews()V

    return-void
.end method

.method focusORSelectTabButton(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTabID()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setSelectedTab(I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-gez v1, :cond_0

    :goto_0
    return p2

    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ge v1, p1, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ge p2, v1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method getChildIndex(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getScroll()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getScrollX()I

    move-result v0

    return v0
.end method

.method getSelectedTab()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v3, v4

    :cond_2
    :goto_0
    return v3

    :pswitch_1
    iget v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    sget v6, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_IDLE:I

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    sget v6, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_FLING:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    sget v6, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_TAB_PRESSED:I

    if-ne v5, v6, :cond_5

    sget v5, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_IDLE:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-eq v1, v5, :cond_2

    sget v3, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_SELECT:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    move v3, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget v4, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_STATE_IDLE:I

    iput v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->ensureChildVisible(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->calcTabButtonPosition()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    sget v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_ADD:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->relocateTabButtonByAdd()V

    :cond_1
    :goto_0
    sget v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_NONE:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    sget v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_REMOVE:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->relocateTabButtonByRemove()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    sget v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_SELECT:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->relocateTabButtonByRotate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getPaddingLeft()I

    move-result v2

    add-int v0, v1, v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMaxDistance()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeTab(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ne v0, v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->removeView(Landroid/view/View;)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mDeleted:I

    sget v1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->SCROLL_VIEW_ACTION_TAB_REMOVE:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewLastAction:I

    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    goto :goto_0
.end method

.method public setScroll(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->scrollTo(II)V

    return-void
.end method

.method setSelectedTab(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_1
    return-void
.end method

.method protected updateLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->updateLayoutParams()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->ensureChildVisible(Landroid/view/View;)V

    return-void
.end method
