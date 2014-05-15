.class public Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.source "TwDndLinearScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;,
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    }
.end annotation


# static fields
.field private static final BITMAP_DEFAULT_ALPHA:I = 0xb3

.field public static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DND_AUTO_SCROLL_BOUND_DELTA:I = 0xf

.field private static final DND_AUTO_SCROLL_DELAY_INIT:I = 0x190

.field private static final DND_AUTO_SCROLL_DELAY_RUNNABLE:I = 0x1e

.field private static final DND_AUTO_SCROLL_LEFT_OR_TOP:I = 0x1

.field private static DND_AUTO_SCROLL_MAX_AREA:I = 0x0

.field private static final DND_AUTO_SCROLL_NONE:I = 0x0

.field private static final DND_AUTO_SCROLL_RIGHT_OR_BOTTOM:I = 0x2

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwDndLinearScrollView"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAddAnimation:Landroid/view/animation/Animation;

.field private mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

.field private mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

.field private mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

.field private mDeleteAnimation:Landroid/view/animation/Animation;

.field private mDeleteChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

.field private mDndTouchOffsetX:I

.field private mDndTouchOffsetY:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDragViewBitmap:Landroid/graphics/Bitmap;

.field private mDragViewBitmapAlpha:I

.field private mDragViewBitmapPaint:Landroid/graphics/Paint;

.field private mDragViewRect:Landroid/graphics/Rect;

.field private mFirstDragPos:I

.field private mIsDragging:Z

.field private mOrientation:I

.field private mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    sput v0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->DND_AUTO_SCROLL_MAX_AREA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    return v0
.end method

.method private checkScrollingBound(III)I
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    sput v6, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->DND_AUTO_SCROLL_MAX_AREA:I

    :cond_0
    if-nez p3, :cond_1

    move v1, p1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getWidth()I

    move-result v0

    :goto_0
    div-int/lit8 v6, v0, 0x3

    int-to-float v6, v6

    sget v7, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->DND_AUTO_SCROLL_MAX_AREA:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v3, v6

    if-ltz v1, :cond_3

    if-ge v1, v3, :cond_3

    :goto_1
    return v4

    :cond_1
    if-ne p3, v4, :cond_2

    move v1, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const-string v6, "TwDndLinearScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INVALIED orientation :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sub-int v4, v0, v3

    if-le v1, v4, :cond_4

    if-ge v1, v0, :cond_4

    const/4 v4, 0x2

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private findNewPosition(II)I
    .locals 7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v2, v4, 0x5

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    if-ge v4, p1, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    if-le v4, p1, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v2, v4, 0x5

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    if-ge v4, p2, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    if-gt v4, p2, :cond_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "TwDndLinearScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INVALIED Orientation :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/high16 v1, -0x8000

    goto :goto_1
.end method

.method private init()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v1, -0x8000

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0xb3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$1;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDensity:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setFillViewport(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setFadingEdgeLength(I)V

    return-void
.end method

.method private setDrag(II)V
    .locals 4

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->findNewPosition(II)I

    move-result v2

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeViewAt(I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->addView(Landroid/view/View;I)V

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->invalidate()V

    goto :goto_0
.end method

.method private setDrop(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v3, -0x8000

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eq p1, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    if-eqz v0, :cond_3

    const-string v0, "TwDndLinearScrollView"

    const-string v1, "dndListener.OnDragAndDropStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;->OnDragAndDropStop()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->addItem(Landroid/view/View;I)V

    return-void
.end method

.method public addItem(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "TwDndLinearScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIED Orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDndAnimationDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragViewAlpha()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    return v0
.end method

.method public getRemoveAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getTwDndListener()Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v4, :cond_2

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrop(I)V

    :cond_1
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    :goto_0
    return v3

    :cond_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->onDrawChildren(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->onDrawChildren(II)V

    goto :goto_0

    :cond_2
    const-string v2, "TwDndLinearScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALIED Orientation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const-wide/16 v9, 0x190

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    :pswitch_0
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_0

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6, v9, v10}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    if-nez v6, :cond_3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    add-int/2addr v6, v3

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    :goto_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v3, v4, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-lez v1, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    invoke-virtual {p0, v6, v9, v10}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    add-int/2addr v6, v4

    invoke-direct {p0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrag(II)V

    goto :goto_1

    :pswitch_2
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDrop(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeAllItems()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeAllViews()V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->removeItem(Landroid/view/View;)V

    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 5

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAniRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$DeleteAnimator;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAddAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAddAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setDndAnimationDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setAnimationDuration(I)V

    return-void
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    goto :goto_0
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setRemoveAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDeleteAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setTwDndListener(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    return-void
.end method

.method public startDrag(I)V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    if-nez v5, :cond_2

    const-string v5, "TwDndLinearScrollView"

    const-string v6, "You must specify dndController to activate Drag&Drop."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v5, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    invoke-virtual {v4, v6}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    invoke-virtual {v4, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->setDragViewAlpha(I)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mIsDragging:Z

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mFirstDragPos:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragPos:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDragViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchOffsetY:I

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {v4, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    if-eqz v5, :cond_5

    const-string v5, "TwDndLinearScrollView"

    const-string v6, "dndListener.OnDragAndDropStart()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mTwDndListener:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;

    invoke-interface {v5}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$TwDndListener;->OnDragAndDropStart()V

    :cond_5
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mOrientation:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->checkScrollingBound(III)I

    move-result v2

    if-lez v2, :cond_6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mAutoscrollRunnable:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$AutoScrolling;

    const-wide/16 v6, 0x190

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->invalidate()V

    goto/16 :goto_0
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->mCustomLayout:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;->startDrag(I)V

    return-void
.end method
