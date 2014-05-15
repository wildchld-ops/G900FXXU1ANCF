.class public Lcom/sec/android/touchwiz/widget/TwDndGridView;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.source "TwDndGridView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndGridView$1;,
        Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;
    }
.end annotation


# static fields
.field private static final BITMAP_ALPHA:I = 0xb3

.field private static final DND_AUTO_SCROLL_BOTTOM:I = 0x2

.field private static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0x7

.field private static final DND_AUTO_SCROLL_FRAME_DELAY:I = 0xa

.field private static final DND_AUTO_SCROLL_NONE:I = 0x0

.field private static final DND_AUTO_SCROLL_TOP:I = 0x1

.field private static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field private static final DND_TOUCH_STATUS_NON:I = 0x0

.field private static final DND_TOUCH_STATUS_START:I = 0x1

.field private static final SCALEUPDOWNANIM_RESISTANCE:F = 15.0f

.field private static final SELECT_HIGHLIGHT_ANIM_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "TwDndGridView"


# instance fields
.field private mAutoScrollBottomDelta:I

.field private mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;

.field private mAutoScrollTopDelta:I

.field private final mDensity:F

.field private mDndAutoScrollMode:I

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

.field private mDndMode:Z

.field private mDndTouchMode:I

.field private mDndTouchOffsetX:I

.field private mDndTouchOffsetY:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePadding:Landroid/graphics/Rect;

.field private mDragGrabHandlePosGravity:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mFirstTouchY:I

.field private mGridViewHeight:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListItemSelectionAnimating:Z

.field private mMovedViewPos:I

.field private mPrevDndTouchY:I

.field private mPrevPos:I

.field private mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x8000

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndMode:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevDndTouchY:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    const/16 v0, 0xb3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapAlpha:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePosGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setSelector(I)V

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwDndGridView;Lcom/sec/android/touchwiz/widget/TwDndGridView$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;

    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollTopDelta:I

    const/high16 v0, -0x3f20

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollBottomDelta:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollTopDelta:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwDndGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollBottomDelta:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwDndGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->reorderIfNeeded()V

    return-void
.end method

.method private checkAutoDragBound(I)I
    .locals 4

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDensity:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v0, v1

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    if-ge p1, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkBlankArea(II)Z
    .locals 5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ge v4, p1, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v4, p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkStartDnd(III)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method private drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private findMovedItemIndex(II)I
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v2

    instance-of v6, v2, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetX()I

    move-result v4

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v1, v6, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    sub-int v7, p1, v4

    sub-int v8, p2, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v1

    :goto_1
    return v6

    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private findMovingArrage()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getNumColumns()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getNumColumns()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    goto :goto_0

    :cond_2
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    goto :goto_1

    :cond_3
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    goto :goto_0
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private recalculateOffset(III)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v18, p1, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v18, p2, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v12, :cond_0

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_6

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v13, p1, v18

    :goto_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v7, p3, v18

    :goto_1
    move v9, v13

    :goto_2
    if-gt v9, v7, :cond_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    instance-of v0, v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object v15, v4

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move-object/from16 v18, v4

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetX()I

    move-result v16

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v17

    :goto_3
    const/16 v18, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    if-eqz v17, :cond_5

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v13, p3, v18

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v7, p1, v18

    goto :goto_1

    :cond_4
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    goto :goto_3

    :cond_5
    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getNumColumns()I

    move-result v10

    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v14, p2, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v8, p1, v18

    move/from16 v11, p2

    move v9, v14

    :goto_5
    if-le v9, v8, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    if-ne v9, v0, :cond_7

    add-int/lit8 v8, v8, -0x1

    :goto_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v5, v11, v18

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v4

    instance-of v0, v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object v15, v4

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    :goto_7
    rem-int v18, v5, v10

    if-nez v18, :cond_9

    const/16 v18, 0x0

    add-int/lit8 v19, v10, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_8
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v14, p2, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v8, p1, v18

    move/from16 v11, p2

    move v9, v14

    :goto_9
    if-ge v9, v8, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    if-ne v9, v0, :cond_b

    add-int/lit8 v8, v8, 0x1

    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v18

    sub-int v5, v11, v18

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    move-result-object v4

    instance-of v0, v4, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object v15, v4

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    :goto_b
    rem-int v18, v5, v10

    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v18, 0x0

    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_c
    new-instance v15, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;-><init>(Z)V

    goto :goto_b

    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->translate(IIII)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setXSpeedFactor(F)V

    const/high16 v18, 0x4040

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$TranslateItemAnimation;->setYSpeedFactor(F)V

    goto :goto_c
.end method

.method private reorderIfNeeded()V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovedItemIndex(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mMovedViewPos:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    :cond_4
    return-void

    :cond_5
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkBlankArea(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->recalculateOffset(III)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    goto :goto_0
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;-><init>(ZLandroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->start()V

    const-string v1, "TwDndGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSelectHighlightingAnim pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDragViewBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkDndGrabHandle(III)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDndMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndMode:Z

    return v0
.end method

.method onAllAnimationsFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->updateDragViewBitmap()V

    :cond_0
    return-void
.end method

.method protected onDrawChildForHandle(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x8000

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->pointToPosition(II)I

    move-result v0

    if-ne v0, v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->checkStartDnd(III)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->findMovingArrage()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstTouchY:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragViewAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchOffsetY:I

    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->startSelectHighlightingAnimation(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDndListener()Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "TwDndGridView"

    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;->OnDragAndDropStart()V

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_6
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    if-nez v7, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_c

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevDndTouchY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstTouchY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v7, v2

    const/high16 v8, 0x4170

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mListItemSelectionAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->updateDragViewBitmap()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getPaddingTop()I

    move-result v8

    add-int v6, v7, v8

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v1, v7

    :cond_4
    const/4 v3, 0x0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-gt v7, v1, :cond_5

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-ge v7, v6, :cond_8

    :cond_5
    const/4 v3, 0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_6
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-le v7, v1, :cond_7

    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I

    :cond_7
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    if-ge v7, v6, :cond_8

    const/4 v7, 0x1

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I

    :cond_8
    if-nez v3, :cond_9

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I

    :cond_9
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndAutoScrollMode:I

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->reorderIfNeeded()V

    :cond_b
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v7, 0x1

    if-eq v0, v7, :cond_d

    const/4 v7, 0x3

    if-ne v0, v7, :cond_b

    :cond_d
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_e

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    :cond_e
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_f

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mPrevPos:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    :cond_f
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    if-eq v7, v8, :cond_10

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_10

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    :cond_10
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->removeAll()V

    :cond_11
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchMode:I

    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mFirstDragPos:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragPos:I

    const/high16 v7, -0x8000

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchX:I

    const/high16 v7, -0x8000

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndTouchY:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragView:Landroid/view/View;

    const/high16 v7, -0x8000

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mGridViewHeight:I

    const/high16 v7, -0x8000

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemWidth:I

    const/high16 v7, -0x8000

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mItemHeight:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_12
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    if-eqz v7, :cond_13

    const-string v7, "TwDndGridView"

    const-string v8, "dndListener.OnDragAndDropStop()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    invoke-interface {v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;->OnDragAndDropStop()V

    :cond_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mHoveringEnabled:Z

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndGridView$AutoScrollRunnable;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    goto/16 :goto_1
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndListener:Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDndMode:Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->removeAll()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->invalidate()V

    return-void
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragGrabHandlePosGravity:I

    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapAlpha:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndGridView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method
