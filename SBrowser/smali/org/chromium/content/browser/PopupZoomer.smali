.class Lorg/chromium/content/browser/PopupZoomer;
.super Landroid/view/View;
.source "PopupZoomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;,
        Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;,
        Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field private static LOGTAG:Ljava/lang/String; = null

.field private static final ZOOM_BOUNDS_MARGIN:I = 0x19

.field private static sOverlayCornerRadius:F

.field private static sOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private static sOverlayPadding:Landroid/graphics/Rect;


# instance fields
.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mBottomExtrusion:F

.field private mClipRect:Landroid/graphics/RectF;

.field private mContetViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftExtrusion:F

.field private mMaxScrollX:F

.field private mMaxScrollY:F

.field private mMinScrollX:F

.field private mMinScrollY:F

.field private mNeedsToInitDimensions:Z

.field private mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

.field private mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

.field private mPopupScrollX:F

.field private mPopupScrollY:F

.field private mRightExtrusion:F

.field private mScale:F

.field private mShiftX:F

.field private mShiftY:F

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowing:Z

.field private mTargetBounds:Landroid/graphics/Rect;

.field private mTimeLeft:J

.field private mTopExtrusion:F

.field private final mTouch:Landroid/graphics/PointF;

.field private mViewClipRect:Landroid/graphics/RectF;

.field private mZoomedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PopupZoomer"

    sput-object v0, Lorg/chromium/content/browser/PopupZoomer;->LOGTAG:Ljava/lang/String;

    const/high16 v0, 0x4040

    sput v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    iput-boolean v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    iput v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    iput v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    const/high16 v1, 0x3f80

    iput v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput-object p2, p0, Lorg/chromium/content/browser/PopupZoomer;->mContetViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/PopupZoomer;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/PopupZoomer;->setFocusableInTouchMode(Z)V

    new-instance v0, Lorg/chromium/content/browser/PopupZoomer$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$1;-><init>(Lorg/chromium/content/browser/PopupZoomer;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/PopupZoomer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/PopupZoomer;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->isTouchOutsideArea(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/PopupZoomer;FF)Landroid/graphics/PointF;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->convertTouchPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private convertTouchPoint(FF)Landroid/graphics/PointF;
    .locals 3

    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v1, v2

    add-float p1, v0, v1

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v1, v2

    add-float p2, v0, v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static getOverlayCornerRadius(Landroid/content/Context;)F
    .locals 1

    sget v0, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    return v0
.end method

.method private static getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->LOGTAG:Ljava/lang/String;

    const-string v2, "No drawable resource for PopupZoomer overlay found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    sput-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private hideImmediately()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;->onPopupZoomerHidden(Lorg/chromium/content/browser/PopupZoomer;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initDimensions()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float v3, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float v9, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float v6, v3, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float v1, v9, v12

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v3, v9, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/PopupZoomer;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/PopupZoomer;->getHeight()I

    move-result v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mContetViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->isToolbarVisible()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mContetViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentTopControlOffset()I

    move-result v10

    :cond_2
    new-instance v12, Landroid/graphics/RectF;

    const/high16 v13, 0x41c8

    add-int/lit8 v14, v10, 0x19

    int-to-float v14, v14

    add-int/lit8 v15, v11, -0x19

    int-to-float v15, v15

    add-int/lit8 v16, v10, 0x19

    sub-int v16, v2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x41c8

    cmpg-float v12, v12, v13

    if-gez v12, :cond_9

    const/high16 v12, 0x41c8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->right:F

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    add-int/lit8 v13, v10, 0x19

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a

    add-int/lit8 v12, v10, 0x19

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    :cond_4
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mLeftExtrusion:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mRightExtrusion:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTopExtrusion:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mBottomExtrusion:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float v4, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float v5, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    sub-float v8, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    sub-float v7, v12, v13

    mul-float v12, v8, v4

    const/high16 v13, -0x4080

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    mul-float v12, v7, v5

    const/high16 v13, -0x4080

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    invoke-static {v12, v13, v14}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    move-object/from16 v0, p0

    iget v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    invoke-static {v12, v13, v14}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    add-int/lit8 v13, v11, -0x19

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    add-int/lit8 v12, v11, -0x19

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v13, v10, 0x19

    sub-int v13, v2, v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    add-int/lit8 v12, v10, 0x19

    sub-int v12, v2, v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v13, v14

    iput v13, v12, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2
.end method

.method private isTouchOutsideArea(FF)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scroll(FF)V
    .locals 3

    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    sub-float/2addr v0, p1

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    sub-float/2addr v0, p2

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    return-void
.end method

.method private setTargetBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private startAnimation(Z)V
    .locals 8

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    iput-boolean v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    iput-boolean p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    iput-boolean v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    invoke-interface {v2, p0}, Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;->onPopupZoomerShown(Lorg/chromium/content/browser/PopupZoomer;)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    return-void

    :cond_1
    iget-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    const-wide/16 v4, 0x12c

    add-long v0, v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    iput-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    iget-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    goto :goto_0
.end method


# virtual methods
.method protected acceptZeroSizeView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hide(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->startAnimation(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->hideImmediately()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->acceptZeroSizeView()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getWidth()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getHeight()I

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    iget-boolean v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    if-eqz v8, :cond_3

    iput-boolean v13, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->initDimensions()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    add-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x4396

    div-float v5, v8, v9

    const/4 v8, 0x0

    invoke-static {v5, v8, v12}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v5

    cmpl-float v8, v5, v12

    if-ltz v8, :cond_4

    iput-boolean v13, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->hideImmediately()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    :cond_5
    iget-boolean v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    :goto_1
    const/high16 v8, 0x42a0

    mul-float/2addr v8, v1

    float-to-int v8, v8

    invoke-virtual {p1, v8, v13, v13, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    sub-float/2addr v8, v12

    mul-float/2addr v8, v1

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v8, v9

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v9, v12, v9

    add-float v4, v8, v9

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    neg-float v8, v8

    sub-float v9, v12, v1

    mul-float/2addr v8, v9

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v6, v8, v9

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    neg-float v8, v8

    sub-float v9, v12, v1

    mul-float/2addr v8, v9

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v7, v8, v9

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mLeftExtrusion:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    add-float/2addr v8, v6

    iput v8, v3, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mTopExtrusion:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    add-float/2addr v8, v7

    iput v8, v3, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mRightExtrusion:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    add-float/2addr v8, v6

    iput v8, v3, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mBottomExtrusion:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    add-float/2addr v8, v7

    iput v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v4, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    iget v9, v3, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/content/browser/PopupZoomer;->getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v8, v3, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sget-object v9, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sget-object v10, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v3, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    sget-object v11, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    iget v11, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    sget-object v12, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v8, 0x437f

    mul-float/2addr v8, v1

    float-to-int v8, v8

    const/16 v9, 0xff

    invoke-static {v8, v13, v9}, Lorg/chromium/content/browser/PopupZoomer;->constrain(III)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v8, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/content/browser/PopupZoomer;->getOverlayCornerRadius(Landroid/content/Context;)F

    move-result v3

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v3, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLastTouch(FF)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    return-void
.end method

.method public setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/PopupZoomer;->setTargetBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->startAnimation(Z)V

    goto :goto_0
.end method
