.class public Lcom/sec/android/touchwiz/widget/TwDndListView;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;,
        Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;
    }
.end annotation


# static fields
.field private static final BITMAP_ALPHA:I = 0xb3

.field private static final DND_AUTO_SCROLL_BOTTOM:I = 0x2

.field private static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0x7

.field private static final DND_AUTO_SCROLL_FRAME_DELAY:I = 0xa

.field private static final DND_AUTO_SCROLL_NONE:I = 0x0

.field private static final DND_AUTO_SCROLL_TOP:I = 0x1

.field private static final DND_BASELINE_BOTTOM:I = 0x1

.field private static final DND_BASELINE_CENTER:I = 0x0

.field private static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field private static final DND_TOUCH_STATUS_NON:I = 0x0

.field private static final DND_TOUCH_STATUS_START:I = 0x1

.field private static final DRAGGING_RELEASE_ANIM_DURATION_MULTIPLICATOR:F = 0.7f

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final SCALEUPDOWNANIM_RESISTANCE:F = 15.0f

.field private static final SELECT_HIGHLIGHT_ANIM_DURATION:I = 0x96

.field private static final SINE_IN_OUT_70:Landroid/view/animation/Interpolator; = null

.field private static final TAG:Ljava/lang/String; = "TwDndListView"


# instance fields
.field private mActivePointerId:I

.field private mAutoScrollBottomDelta:I

.field private mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

.field private mAutoScrollTopDelta:I

.field private final mDensity:F

.field private mDndAutoScrollMode:I

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

.field private mDndMode:Z

.field private mDndSwitchBaseLine:I

.field private mDndTouchMode:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragBitmapTop:I

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePadding:Landroid/graphics/Rect;

.field private mDragGrabHandlePosGravity:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewBitmapTranslateY:I

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mDropDonePending:Z

.field private mFirstDragPos:I

.field private mFirstTouchY:I

.field private mListItemSelectionAnimating:Z

.field mNonMovableItems:Landroid/util/SparseIntArray;

.field private mPrevTouchY:I

.field private mRetainFirstDragViewPos:I

.field mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

.field private final mScrollBarSize:I

.field private mTempEvent:Landroid/view/MotionEvent;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:I

.field private final mTouchSlop:I

.field private mUserSetDragItemBitmap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDropDonePending:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapTranslateY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScrollBarSize:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchSlop:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setLocalItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;)V

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndListView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollTopDelta:I

    const/high16 v0, -0x3f20

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollBottomDelta:I

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwDndListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollBottomDelta:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwDndListView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapTranslateY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwDndListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->reorderIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwDndListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwDndListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwDndListView;)Lcom/sec/android/touchwiz/widget/TwDndController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwDndListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwDndListView;)Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwDndListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwDndListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwDndListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollTopDelta:I

    return v0
.end method

.method private addNewTranslation(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    :cond_0
    sub-int v3, p2, v2

    invoke-virtual {v1, v4, v4, p2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate2(IIII)V

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(F)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    neg-int v3, v2

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate2(IIII)V

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(F)V

    goto :goto_0
.end method

.method private checkStartDnd(III)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndListView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private findDragItemPosition(I)I
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v2, v1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private findMovedItemPosition(I)I
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    sub-int/2addr v6, v1

    if-ne v2, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v3

    instance-of v6, v3, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v8, p1, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int v6, v2, v1

    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private hasDragGrabHandle()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDrag(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    const/high16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheQuality(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v0, :cond_1

    const-string v0, "TwDndListView"

    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStart()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragViewAlpha(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->startSelectHighlightingAnimation(Landroid/view/View;)V

    const-string v0, "TwDndListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent() mFirstDragPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDragPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    move v0, v1

    goto/16 :goto_0
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mPrevTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v6, v1

    const/high16 v7, 0x4170

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    :cond_1
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    const/4 v2, 0x0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v0, v6

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingTop()I

    move-result v7

    add-int v5, v6, v7

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-gt v6, v0, :cond_4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-ge v6, v5, :cond_7

    :cond_4
    const/4 v2, 0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

    const-wide/16 v7, 0x96

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-le v6, v0, :cond_6

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    :cond_6
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    if-ge v6, v5, :cond_7

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    :cond_7
    if-nez v2, :cond_8

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    :cond_8
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->reorderIfNeeded()V

    return-void

    :cond_a
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    if-eq v6, v10, :cond_7

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Current DndSwitchArea is not acceptable"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 13

    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v6

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v10, :cond_0

    const-string v10, "TwDndListView"

    const-string v11, "dndListener.OnDragAndDropStop() DND_TOUCH_STATUS_START"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    sub-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    sub-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_2

    if-nez v4, :cond_7

    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int v3, v10, v11

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v1, v10, v3

    :goto_2
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lcom/sec/android/touchwiz/widget/TwDndListView$1;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v10, Lcom/sec/android/touchwiz/widget/TwDndListView$2;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v10, 0xd2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwDndListView;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-ge v10, v6, :cond_6

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    neg-int v1, v10

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v1, v10, v3

    goto :goto_2

    :cond_7
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-eqz v10, :cond_8

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v10, :cond_3

    const-string v10, "TwDndListView"

    const-string v11, "dndListener.OnDragAndDropStop() mListItemSelectionAnimating is true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v7, v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragBitmapTop:I

    sub-int v0, v10, v11

    new-instance v8, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate2(IIII)V

    const v10, 0x3f333333

    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(F)V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-virtual {v10, v11, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setEnabled(Z)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDropDonePending:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndTouchValuesAndBitmap()V

    const-string v10, "TwDndListView"

    const-string v11, "onTouchUp() start last animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private recalculateOffset(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDividerHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v2, v10, v4

    if-le p2, p1, :cond_5

    add-int/lit8 v7, p1, 0x1

    :goto_0
    if-gt v7, p2, :cond_b

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-le v7, v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_2

    move v9, v2

    move v3, v7

    :goto_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    :cond_0
    neg-int v10, v9

    invoke-direct {p0, v7, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->addNewTranslation(II)V

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sub-int v10, v7, v5

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_3
    sub-int v10, v7, v5

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v10, "TwDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwDndListView;->addReturningTranslation(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v7, p1, -0x1

    :goto_3
    if-lt v7, p2, :cond_b

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ge v7, v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_8

    move v9, v2

    move v3, v7

    :goto_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_4

    :cond_6
    invoke-direct {p0, v7, v9}, Lcom/sec/android/touchwiz/widget/TwDndListView;->addNewTranslation(II)V

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    sub-int v10, v7, v5

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    :cond_9
    sub-int v10, v7, v5

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v10, "TwDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findMovedItemPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwDndListView;->addReturningTranslation(I)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method private reorderIfNeeded()V
    .locals 6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->findDragItemPosition(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    invoke-interface {v4, v5, v1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    :cond_0
    const/4 v2, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->recalculateOffset(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    :cond_3
    return-void
.end method

.method private resetDndPositionValues()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    return-void
.end method

.method private resetDndState()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndTouchValuesAndBitmap()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndPositionValues()V

    return-void
.end method

.method private resetDndTouchValuesAndBitmap()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x8000

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapTranslateY:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAutoScrollMode:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndListView$AutoScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;-><init>(ZLandroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;->start(I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    return-void
.end method


# virtual methods
.method public OnLocalItemAnimatorEnd()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "TwDndListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnLocalItemAnimationStop mDropDonePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDropDonePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDropDonePending:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDropDonePending:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndPositionValues()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    if-eqz v0, :cond_3

    const-string v0, "TwDndListView"

    const-string v1, "dndListener.OnDragAndDropStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected checkDndGrabHandle(III)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->hasDragGrabHandle()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTouchOffsetY:I

    sub-int v1, v2, v3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragBitmapTop:I

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDropDonePending:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method protected drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_1

    add-int/lit8 p2, p1, -0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_2

    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mRetainFirstDragViewPos:I

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p1, -0x1

    goto :goto_0
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDndMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    :cond_3
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v3

    if-le v3, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mFirstTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->pointToPosition(II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->hasDragGrabHandle()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_5
    if-ltz v1, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkStartDnd(III)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->initDrag(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    :goto_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    if-ne v3, v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v3

    if-le v3, v2, :cond_7

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->hasDragGrabHandle()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    if-eqz v2, :cond_9

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V

    goto :goto_1
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->hasDragGrabHandle()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwDndListView;->initDrag(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndTouchMode:I

    if-nez v5, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_1
    :goto_0
    :pswitch_0
    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v3, v5, 0x8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    if-ne v2, v5, :cond_1

    if-nez v3, :cond_3

    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mActivePointerId:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setDndBaseLine(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndSwitchBaseLine:I

    goto :goto_0
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndMode:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->removeAll()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->resetDndState()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->invalidate()V

    return-void
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragGrabHandlePosGravity:I

    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mUserSetDragItemBitmap:Z

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapAlpha:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
