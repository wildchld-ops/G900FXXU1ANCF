.class public Lorg/samsung/content/sbrowser/SelectionZoomer;
.super Landroid/view/View;
.source "SelectionZoomer.java"


# static fields
.field private static final ADJUST_Y_UP:I = 0x64

.field private static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field private static final BOUNDARY_STOROKE_WIDTH_HDPI:F = 0.5f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ZOOM_SCALE:F = 1.8f

.field private static final FLEXIBLE_ZOOM_RATE:F = 0.55f

.field private static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field private static final MAGNIFIER_PADDING:I = 0xa

.field private static final ROUND_DIAMETER:F = 2.0f

.field private static final STROKE_WIDTH:I = 0x2

.field private static final XX_ZOOM_SCALE:F = 1.8f

.field private static mMagnifierHeight:I

.field private static mMagnifierWidth:I

.field private static mRectCurSel:Landroid/graphics/Rect;

.field private static mTailHeight:I

.field private static mTailWidth:I

.field private static mfChromeViewZoomScale:F

.field private static mfFlexibleZoomScale:F


# instance fields
.field private final MOVE_DELAY:I

.field private final MOVE_INTERNAL:I

.field mAdjustY:I

.field private mBgPath:Landroid/graphics/Path;

.field private mBoundaryPaint:Landroid/graphics/Paint;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private final mContext:Landroid/content/Context;

.field private mGarbageBgPath:Landroid/graphics/Path;

.field mHandleHeight:I

.field private final mHandler:Landroid/os/Handler;

.field private mLocationToolBarHeight:I

.field private mMagnifierPath:Landroid/graphics/Path;

.field private mMagnifierRect:Landroid/graphics/Rect;

.field mMode:I

.field private mPathBgFill:Landroid/graphics/Path;

.field private mScreenBitmapNeedsUpdate:Z

.field private mScreenbitmap:Landroid/graphics/Bitmap;

.field private mShowX:I

.field private mShowY:I

.field private mSrcView:Lorg/chromium/content/browser/ContentView;

.field private mSrcX:I

.field private mSrcY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field public mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailWidth:I

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailHeight:I

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mRectCurSel:Landroid/graphics/Rect;

    invoke-static {}, Lorg/samsung/content/sbrowser/SelectionZoomer;->magnifierZoomscaleValue()F

    move-result v0

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfFlexibleZoomScale:F

    const/4 v0, 0x0

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfChromeViewZoomScale:F

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentView;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mLocationToolBarHeight:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewWidth:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mAdjustY:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMode:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mHandleHeight:I

    iput-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenBitmapNeedsUpdate:Z

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    const/16 v4, 0x5a

    iput v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->MOVE_DELAY:I

    iput v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->MOVE_INTERNAL:I

    new-instance v4, Lorg/samsung/content/sbrowser/SelectionZoomer$1;

    invoke-direct {v4, p0}, Lorg/samsung/content/sbrowser/SelectionZoomer$1;-><init>(Lorg/samsung/content/sbrowser/SelectionZoomer;)V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentView;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v6, v6, v6}, Lorg/samsung/content/sbrowser/SelectionZoomer;->setPadding(IIII)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/chromium/content/browser/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-le v1, v3, :cond_0

    div-int/lit8 v4, v3, 0x3

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v4, v1, 0xc

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    :goto_0
    sput v6, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailWidth:I

    sput v6, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailHeight:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBoundaryPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_1
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBoundaryPaint:Landroid/graphics/Paint;

    const v5, -0xff0001

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mGarbageBgPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mPathBgFill:Landroid/graphics/Path;

    iput-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenBitmapNeedsUpdate:Z

    return-void

    :cond_0
    div-int/lit8 v4, v1, 0x3

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v4, v3, 0xc

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    goto :goto_0

    :cond_1
    if-le v1, v3, :cond_2

    div-int/lit8 v4, v3, 0x2

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v4, v1, 0x8

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    goto :goto_0

    :cond_2
    div-int/lit8 v4, v1, 0x2

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v4, v3, 0x8

    sput v4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SelectionZoomer;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->moveInternal()V

    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 16

    sget v9, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    int-to-float v9, v9

    sget v10, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfFlexibleZoomScale:F

    div-float/2addr v9, v10

    float-to-int v8, v9

    sget v9, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    int-to-float v9, v9

    sget v10, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfFlexibleZoomScale:F

    div-float/2addr v9, v10

    float-to-int v7, v9

    const/4 v9, 0x2

    new-array v6, v9, [I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9, v6}, Lorg/chromium/content/browser/ContentView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getStartY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getEndY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v9

    iget-object v9, v9, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v9, v5, -0x19

    move-object/from16 v0, p0

    iput v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    :cond_0
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress()Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcX:I

    div-int/lit8 v10, v8, 0x2

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mAdjustY:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcX:I

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    div-int/lit8 v13, v7, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mAdjustY:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v13

    invoke-virtual {v13}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v13

    float-to-int v13, v13

    sub-int/2addr v12, v13

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v8

    int-to-float v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v14, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    sget v15, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v12

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_7

    const/4 v9, 0x0

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_2
    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_8

    iget v9, v4, Landroid/graphics/Rect;->left:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenBitmapNeedsUpdate:Z

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenBitmapNeedsUpdate:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v9

    iget-object v9, v9, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v1, -0x19

    move-object/from16 v0, p0

    iput v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    goto/16 :goto_0

    :cond_6
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcX:I

    div-int/lit8 v10, v8, 0x2

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mAdjustY:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcX:I

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    div-int/lit8 v13, v7, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mAdjustY:I

    add-int/2addr v12, v13

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_1

    :cond_7
    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_1

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_2

    :cond_8
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_2

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_3

    :cond_9
    const/4 v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_4
.end method

.method private magnifierYPositionValue()I
    .locals 2

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNativeContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static final magnifierZoomscaleValue()F
    .locals 3

    const v2, 0x3fe66666

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_0

    :cond_0
    return v2
.end method

.method private moveInternal()V
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->invalidate()V

    goto :goto_0
.end method

.method private setShowXY(II)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput p1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcX:I

    iput p2, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenBitmapNeedsUpdate:Z

    const/4 v7, 0x2

    new-array v6, v7, [I

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isMultiwindowMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7, v6}, Lorg/chromium/content/browser/ContentView;->getLocationOnScreen([I)V

    :goto_0
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPix()F

    move-result v7

    float-to-int v5, v7

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getStartY()I

    move-result v4

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getEndY()I

    move-result v2

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v7

    iget-object v0, v7, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mCurrentHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    iget-object v3, v7, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    iget-object v1, v7, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    aget v7, v6, v10

    add-int/2addr v7, p1

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ge v7, v8, :cond_2

    iput v10, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    :goto_1
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress()Z

    move-result v7

    if-eqz v7, :cond_6

    aget v7, v6, v9

    add-int/2addr v7, p2

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x64

    if-le v7, v8, :cond_4

    aget v7, v6, v9

    add-int/2addr v7, p2

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    sub-int/2addr v7, v8

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailHeight:I

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mHandleHeight:I

    add-int/lit8 v8, v8, 0x1e

    add-int/lit8 v8, v8, 0x64

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    :goto_2
    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    aget v8, v6, v9

    add-int/2addr v8, p2

    if-le v7, v8, :cond_0

    aget v7, v6, v10

    add-int/2addr v7, p1

    div-int/lit8 v8, v5, 0x2

    if-ge v7, v8, :cond_5

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    :cond_0
    :goto_3
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->updateDrawingPath()V

    return-void

    :cond_1
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7, v6}, Lorg/chromium/content/browser/ContentView;->getLocationInWindow([I)V

    goto/16 :goto_0

    :cond_2
    aget v7, v6, v10

    add-int/2addr v7, p1

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_3

    sget v7, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    sub-int v7, v5, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    goto :goto_1

    :cond_3
    aget v7, v6, v10

    add-int/2addr v7, p1

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    goto :goto_1

    :cond_4
    aget v7, v6, v9

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto :goto_2

    :cond_5
    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    iget-object v7, v7, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v7

    if-eqz v7, :cond_b

    aget v7, v6, v9

    add-int/2addr v7, v4

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x64

    if-le v7, v8, :cond_a

    sget v7, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    sub-int v7, v4, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    if-eqz v7, :cond_8

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/lit8 v7, v7, -0x32

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    :cond_7
    :goto_4
    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    aget v8, v6, v9

    add-int/2addr v8, p2

    if-le v7, v8, :cond_0

    aget v7, v6, v10

    add-int/2addr v7, p1

    div-int/lit8 v8, v5, 0x2

    if-ge v7, v8, :cond_f

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    goto/16 :goto_3

    :cond_8
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto :goto_4

    :cond_9
    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto :goto_4

    :cond_a
    aget v7, v6, v9

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewCore;->getSelectionHandleController()Lorg/chromium/content/browser/input/SelectionHandleController;

    move-result-object v7

    iget-object v7, v7, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v7}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v7

    if-eqz v7, :cond_7

    aget v7, v6, v9

    add-int/2addr v7, v2

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x64

    if-le v7, v8, :cond_e

    sget v7, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    sub-int v7, v2, v7

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    if-eqz v7, :cond_c

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/lit8 v7, v7, -0x32

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto :goto_4

    :cond_c
    iget-object v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto/16 :goto_4

    :cond_d
    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    iget-object v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getBottomBarHeight(Landroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x32

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto/16 :goto_4

    :cond_e
    aget v7, v6, v9

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    goto/16 :goto_4

    :cond_f
    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    goto/16 :goto_3
.end method

.method private updateDrawingPath()V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x4000

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    sget v5, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    add-int/lit8 v4, v5, -0x2

    sget v5, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    add-int/lit8 v0, v5, -0x2

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    add-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/2addr v7, v0

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Lorg/samsung/content/sbrowser/SelectionZoomer;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    add-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    iget v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    iget v9, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v10, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0xa

    int-to-float v9, v9

    iget v10, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    sget v11, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0xa

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierRect:Landroid/graphics/Rect;

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    add-int/lit8 v6, v6, 0xa

    iget v7, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    add-int/lit8 v7, v7, 0xa

    iget v8, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowX:I

    sget v9, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0xa

    iget v9, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mShowY:I

    sget v10, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0xa

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewWidth:I

    iget v6, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mPathBgFill:Landroid/graphics/Path;

    return-void
.end method

.method private updateZoomScale()V
    .locals 3

    sget-object v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfChromeViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/samsung/content/sbrowser/SelectionZoomer;->magnifierZoomscaleValue()F

    move-result v0

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfFlexibleZoomScale:F

    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierHeight:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sget-object v1, Lorg/samsung/content/sbrowser/SelectionZoomer;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfChromeViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mScreenbitmap:Landroid/graphics/Bitmap;

    :cond_1
    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcY:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mAdjustY:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMode:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mHandleHeight:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-static {}, Lorg/samsung/content/sbrowser/SelectionZoomer;->magnifierZoomscaleValue()F

    move-result v0

    sput v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfFlexibleZoomScale:F

    sput-object v2, Lorg/samsung/content/sbrowser/SelectionZoomer;->mRectCurSel:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    goto :goto_0
.end method

.method public move(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->setShowXY(II)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isSelectionFromLongPress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->setShowXY(II)V

    goto :goto_0
.end method

.method move(IILandroid/graphics/Rect;F)V
    .locals 0

    sput-object p3, Lorg/samsung/content/sbrowser/SelectionZoomer;->mRectCurSel:Landroid/graphics/Rect;

    sput p4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfChromeViewZoomScale:F

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->updateZoomScale()V

    invoke-virtual {p0, p1, p2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->move(II)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v7, -0x1

    const/high16 v6, -0x100

    const/high16 v5, 0x4000

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mMagnifierRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SelectionZoomer;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show(II)V
    .locals 14

    iget-object v13, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    if-nez v13, :cond_1

    const-string v1, "WebMagnifier"

    const-string v2, "show : Cannot find Decor View."

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v13, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mSrcView:Lorg/chromium/content/browser/ContentView;

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-direct/range {p0 .. p2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->setShowXY(II)V

    const/4 v1, 0x2

    new-array v10, v1, [I

    const/4 v11, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isMultiwindowMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewWidth:I

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->magnifierYPositionValue()I

    move-result v4

    const/16 v5, 0x3e8

    const/16 v6, 0x208

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v11

    :goto_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v1, v12, v8

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mLocationToolBarHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v10}, Lorg/chromium/content/browser/ContentView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPix()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewWidth:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPix()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isToolBarVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getToolBarHeight(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->magnifierYPositionValue()I

    move-result v1

    const/4 v2, 0x1

    aget v2, v10, v2

    add-int v4, v1, v2

    :goto_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mViewHeight:I

    const/4 v3, 0x0

    aget v3, v10, v3

    const/16 v5, 0x3e8

    const/16 v6, 0x108

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    aget v4, v10, v1

    goto :goto_2
.end method

.method show(IILandroid/graphics/Rect;F)V
    .locals 0

    sput-object p3, Lorg/samsung/content/sbrowser/SelectionZoomer;->mRectCurSel:Landroid/graphics/Rect;

    sput p4, Lorg/samsung/content/sbrowser/SelectionZoomer;->mfChromeViewZoomScale:F

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->updateZoomScale()V

    invoke-virtual {p0, p1, p2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    return-void
.end method
