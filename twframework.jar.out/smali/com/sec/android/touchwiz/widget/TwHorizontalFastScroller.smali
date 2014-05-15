.class Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
.super Ljava/lang/Object;
.source "TwHorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final DEFAULT_STATES:[I = null

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PENDING_DRAG_DELAY:I = 0xb4

.field private static final PRESSED_STATES:[I = null

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwHorizontalFastScroller"

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field mInitialTouchX:F

.field private mItemCount:I

.field mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

.field mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field mPendingDrag:Z

.field private mPosition:I

.field private mScaledTouchSlop:I

.field mScrollCompleted:Z

.field private mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbH:I

.field mThumbW:I

.field mThumbX:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    sput v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->MIN_PAGES:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->PRESSED_STATES:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->DEFAULT_STATES:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mItemCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->init(Landroid/content/Context;)V

    return-void
.end method

.method private cancelFling()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v13, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    mul-int v13, v13, p1

    sub-int v14, p3, p2

    div-int v8, v13, v14

    :cond_3
    :goto_0
    return v8

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    sub-int p1, p1, v13

    if-gez p1, :cond_5

    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    sub-int p3, p3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    sub-int v12, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v13

    sub-int v7, v5, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v2, 0x0

    :goto_1
    int-to-float v13, v11

    sub-float v13, v2, v13

    int-to-float v14, v7

    div-float v6, v13, v14

    int-to-float v13, v9

    add-float/2addr v13, v6

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v12

    mul-float/2addr v13, v14

    float-to-int v8, v13

    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    int-to-float v13, v8

    sub-int v14, v12, v8

    int-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v8, v13

    goto/16 :goto_0

    :cond_6
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v13, v14

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPosition:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onSizeChanged(IIII)V

    :cond_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->refreshDrawableState()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mMatchDragPosition:Z

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setScrollbarPosition(I)V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private refreshDrawableState()V
    .locals 3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->PRESSED_STATES:[I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mChangedBounds:Z

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method beginDrag()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelFling()V

    return-void
.end method

.method cancelPendingDrag()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    move/from16 v31, v0

    if-nez v31, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    move/from16 v32, v0

    sub-int v8, v31, v32

    div-int/lit8 v9, v8, 0x2

    const/4 v12, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;->getAlpha()I

    move-result v5

    const/16 v31, 0x7f

    move/from16 v0, v31

    if-ge v5, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    mul-int/lit8 v32, v5, 0x2

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPosition:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v32, v0

    mul-int v32, v32, v5

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    sub-int v12, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v34, v0

    add-int v34, v34, v24

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v24

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mChangedBounds:Z

    :cond_3
    const/16 v31, 0x0

    int-to-float v0, v9

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v11, v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v31, v31, v24

    div-int/lit8 v32, v25, 0x2

    sub-int v26, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v32

    sub-int v32, v32, v11

    add-int v33, v26, v25

    move-object/from16 v0, v31

    move/from16 v1, v26

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    sub-int v31, v28, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    add-int v31, v30, v12

    add-int v31, v31, v9

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v31, 0x42b4

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v31, -0x3d4c

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    sub-int v31, v31, v12

    sub-int v31, v31, v9

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    neg-int v0, v12

    move/from16 v32, v0

    sub-int v32, v32, v9

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDrawOverlay:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPosition:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPosition:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    sub-int v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v24

    :goto_2
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    div-int/lit8 v32, v32, 0x2

    add-int v32, v32, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    int-to-float v0, v13

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v31 .. v35}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    add-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v31, 0x42b4

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v31, -0x3d4c

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v10, v31, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v27, v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x4

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v7

    int-to-float v0, v10

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    add-float v33, v33, v34

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    sub-int v33, v33, v27

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v31, v0

    mul-int v31, v31, v5

    move/from16 v0, v31

    div-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    sub-int v24, v28, v31

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v32, v0

    mul-int v32, v32, v5

    move/from16 v0, v32

    div-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    add-int v24, v31, v32

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    sub-int v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    if-nez v5, :cond_7

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v20

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLayoutDirection()I

    move-result v31

    packed-switch v31, :pswitch_data_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    move/from16 v31, v0

    sub-int v24, v28, v31

    move/from16 v6, v28

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_8
    move/from16 v13, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    move/from16 v31, v0

    add-int v20, v30, v31

    goto :goto_3

    :pswitch_3
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    return v0
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method getSectionsFromIndexer()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    :cond_0
    return-void
.end method

.method onScroll(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;III)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mItemCount:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-eq v0, v4, :cond_5

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getThumbPositionForListPosition(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->resetThumbPos()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mChangedBounds:Z

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_2

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mVisibleItem:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-eq v0, v4, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    invoke-virtual {v1, v4, v2, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    div-int/lit8 v1, p1, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_9

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:Z

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int/2addr v8, v9

    add-int/lit8 v3, v8, 0xa

    if-gez v3, :cond_8

    const/4 v3, 0x0

    :cond_4
    :goto_1
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->scrollTo(F)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    :cond_6
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    move v6, v7

    goto/16 :goto_0

    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    add-int/2addr v8, v3

    if-le v8, v4, :cond_4

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v3, v4, v8

    goto :goto_1

    :cond_9
    if-ne v0, v11, :cond_11

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:Z

    if-eqz v8, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScaledTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    :cond_a
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelFling()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    :cond_c
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne v8, v10, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v1, v6, v8

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v6

    sub-int v4, v6, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int/2addr v6, v8

    add-int/lit8 v3, v6, 0xa

    if-gez v3, :cond_e

    const/4 v3, 0x0

    :cond_d
    :goto_2
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v11, :cond_f

    move v6, v7

    goto/16 :goto_0

    :cond_e
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    add-int/2addr v6, v3

    if-le v6, v4, :cond_d

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v3, v4, v6

    goto :goto_2

    :cond_f
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    int-to-float v6, v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->scrollTo(F)V

    :cond_10
    move v6, v7

    goto/16 :goto_0

    :cond_11
    if-ne v0, v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0
.end method

.method scrollTo(F)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    move-object/from16 v0, v16

    array-length v8, v0

    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    if-lt v14, v8, :cond_0

    add-int/lit8 v14, v8, -0x1

    :cond_0
    move v3, v14

    move v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    move v9, v2

    move v12, v7

    move v13, v14

    add-int/lit8 v11, v14, 0x1

    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    :cond_1
    if-ne v9, v7, :cond_3

    :cond_2
    if-lez v14, :cond_3

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    if-eq v12, v7, :cond_4

    move v13, v14

    move v15, v14

    :cond_3
    :goto_0
    add-int/lit8 v10, v11, 0x1

    :goto_1
    if-ge v10, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_5

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    if-nez v14, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    if-ne v13, v3, :cond_8

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_8

    move v7, v12

    :goto_2
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    :goto_3
    if-ltz v15, :cond_e

    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_d

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDrawOverlay:Z

    :goto_5
    return-void

    :cond_8
    sub-int v18, v9, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, p1, v5

    mul-float v18, v18, v19

    sub-float v19, v4, v5

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v12, v18

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    goto :goto_3

    :cond_a
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_b

    add-int/lit8 v7, v2, -0x1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    :goto_6
    const/4 v15, -0x1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    goto :goto_6

    :cond_d
    const/16 v18, 0x0

    goto :goto_4

    :cond_e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method public setAlwaysShow(Z)V
    .locals 4

    const/4 v2, 0x2

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPosition:I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->refreshDrawableState()V

    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->resetThumbPos()V

    :cond_0
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollFade:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$ScrollFade;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v4

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbW:I

    add-int v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLayoutDirection()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    sub-int v3, v4, v5

    move v0, v4

    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidateOnAnimation()V

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbH:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method startPendingDrag()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    return-void
.end method
