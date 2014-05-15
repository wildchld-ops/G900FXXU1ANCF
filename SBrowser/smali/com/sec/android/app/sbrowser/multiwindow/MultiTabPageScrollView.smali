.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;
.super Landroid/widget/ScrollView;
.source "MultiTabPageScrollView.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MultiTabScrollView"


# instance fields
.field private mActivePointerId:I

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

.field public mOverScroller:Landroid/widget/OverScroller;

.field private mOverscrollDistance:I

.field mParentLayout:Landroid/view/ViewGroup;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->initScrollView()V

    check-cast p1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method private getItemHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getNumberOfItemsInOnePage()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_NUMBER_OF_ITEMS_IN_ONE_PAGE_PORTRAIT:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_NUMBER_OF_ITEMS_IN_ONE_PAGE_LANDSCAPE:I

    goto :goto_0
.end method

.method private getPageHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getItemHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getNumberOfItemsInOnePage()I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method private getScrollRange()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "Scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child details "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverscrollDistance:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public Pagefling(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "FLING_DISTANCE"

    const-string v1, "--------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FLING_DISTANCE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "velocityY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FLING_DISTANCE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrollY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_1

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->pageScrollNext(I)V

    const-string v0, "FLING_DISTANCE"

    const-string v1, "--------------------------Fling UP----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->pageScrollNext(I)V

    const-string v0, "FLING_DISTANCE"

    const-string v1, "--------------------------Fling DOWN----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getHeight()I

    move-result v0

    neg-int v4, v3

    iget v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v8, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    if-eq v8, v2, :cond_2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    if-ne v10, v2, :cond_3

    const-string v0, "MultiTabScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    iput v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    const-string v1, "MultiTabScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->recycleVelocityTracker()V

    goto :goto_1

    :cond_5
    iput v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    move v3, v0

    :cond_6
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    const-string v0, "MultiTabScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-eqz v25, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_4

    const-string v3, "MultiTabScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in onTouchEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    sub-int v5, v3, v28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-eqz v25, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mTouchSlop:I

    sub-int/2addr v5, v3

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    const-string v3, "praveen"

    const-string v4, "is dragged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getScrollRange()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getOverScrollMode()I

    move-result v24

    if-eqz v24, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_d

    if-lez v9, :cond_d

    :cond_7
    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollX:I

    const/4 v4, -0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->onScrollChanged(IIII)V

    :cond_9
    if-eqz v19, :cond_0

    add-int v26, v23, v5

    if-gez v26, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mTouchSlop:I

    add-int/2addr v5, v3

    goto/16 :goto_3

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_e
    move/from16 v0, v26

    if-le v0, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->isTabManagerInMultiWindowStatus()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_10

    move/from16 v0, v21

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->fling(I)V

    :cond_f
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->endDrag()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_f

    move/from16 v0, v21

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->Pagefling(I)V

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mOverScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->postInvalidateOnAnimation()V

    :cond_12
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->endDrag()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    goto/16 :goto_0

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mLastMotionY:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScrollNext(I)V
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getPageHeight()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v1, :cond_2

    if-lez v0, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-lez v0, :cond_0

    neg-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method setParentLayout(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPageScrollView;->mParentLayout:Landroid/view/ViewGroup;

    return-void
.end method
