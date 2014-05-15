.class Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;
.super Landroid/view/View;
.source "SbrAirViewMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANIMATION_TIME:J = 0x0L

.field public static final BIG_BG_HEIGHT:I = 0x6c

.field public static final BIG_BG_HEIGHT_L:I = 0x6c

.field public static final BIG_BG_WIDTH:I = 0x154

.field public static final BIG_BG_WIDTH_L:I = 0x1a4

.field public static final BIG_HEIGHT:I = 0x60

.field public static final BIG_HEIGHT_L:I = 0x60

.field public static final BIG_WIDTH:I = 0x150

.field public static final BIG_WIDTH_L:I = 0x1a0

.field public static final DEFAULT_DPI:I = 0x168

.field public static final FINGER_POINT_MARGIN:I = 0x4b

.field public static final FINGER_POINT_MARGIN_SMALL_L:I = 0x19

.field public static final FINGER_POINT_MARGIN_SMALL_P:I = 0x10

.field public static final SHADOW_MARGIN:I = 0x8

.field public static final SMALL_BG_HEIGHT:I = 0x66

.field public static final SMALL_BG_HEIGHT_L:I = 0x6c

.field public static final SMALL_BG_WIDTH:I = 0xa3

.field public static final SMALL_BG_WIDTH_L:I = 0x11f

.field public static final SMALL_HEIGHT:I = 0x59

.field public static final SMALL_HEIGHT_L:I = 0x60

.field public static final SMALL_WIDTH:I = 0xa0

.field public static final SMALL_WIDTH_L:I = 0x11b

.field private static final TAG:Ljava/lang/String; = "SbrAirViewMagnifier.java"

.field private static sAirViewBigResourceId:I

.field private static sAirViewBigResourceId_L:I

.field private static sAirViewSmallResourceId:I

.field private static sAirViewSmallResourceId_L:I

.field private static sBgDrawableBig:Landroid/graphics/drawable/Drawable;

.field private static sBgDrawableBig_L:Landroid/graphics/drawable/Drawable;

.field private static sBgDrawableSmall:Landroid/graphics/drawable/Drawable;

.field private static sBgDrawableSmall_L:Landroid/graphics/drawable/Drawable;


# instance fields
.field public density:F

.field public mAirViewMode:Z

.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mBigBgLimit:I

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContent:Landroid/graphics/PointF;

.field private mContentsPadding_L:F

.field private mContentsPadding_T:F

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field public mCurrentViewHeight:I

.field public mCurrentViewWidth:I

.field public mFingerPointMarginSmall:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mHover:Landroid/graphics/PointF;

.field public mLandscapeMode:Z

.field private mLocalBitmap:Landroid/graphics/Bitmap;

.field public mNeedToUpdate:Z

.field private mPopUpFixedPosition:I

.field public mPopUpHeight:I

.field public mPopUpHeightBG:I

.field public mPopUpWidth:I

.field public mPopUpWidthBG:I

.field private mScale:F

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mShowInterpolator:Landroid/view/animation/Interpolator;

.field public mShowX:I

.field public mShowY:I

.field private mShowing:Z

.field private mSmallDisplay:Z

.field private mStatusBarHeight:I

.field private mTimeLeft:J

.field public mToolBarHeight:I

.field private mWindowTop:I

.field private sbrviewcore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field public scaleValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v0, 0x3f80

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewHeight:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->density:F

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    const v0, 0x3fd9999a

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContentsPadding_L:F

    const v0, 0x3ff33333

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContentsPadding_T:F

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mBigBgLimit:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mWindowTop:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpFixedPosition:I

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHideInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAirViewMode:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mNeedToUpdate:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimating:Z

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowing:Z

    iput-wide v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimationStartTime:J

    iput-wide v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowX:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x4000

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sbrviewcore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setFocusableInTouchMode(Z)V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    return-void
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

.method private drawMagnifierImageToCanvas(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContentsPadding_L:F

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContentsPadding_T:F

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mNeedToUpdate:Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "SbrAirViewMagnifier.java"

    const-string v1, "BSLEE : mCurrentBitmap is NULL "

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sbrviewcore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mNeedToUpdate:Z

    goto :goto_0
.end method

.method private getAirViewBitmap()Z
    .locals 14

    const/high16 v13, -0x4080

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    iget v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    int-to-float v9, v9

    iget v10, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float v2, v9, v10

    iget v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    int-to-float v9, v9

    iget v10, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float v1, v9, v10

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewHeight:I

    iget-object v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float v10, v2, v12

    sub-float v6, v9, v10

    iget-object v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float v10, v2, v12

    add-float v7, v9, v10

    iget-object v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float v10, v1, v12

    sub-float v8, v9, v10

    iget-object v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float v10, v1, v12

    add-float v5, v9, v10

    cmpg-float v9, v6, v11

    if-gez v9, :cond_1

    mul-float v0, v13, v6

    add-float/2addr v7, v0

    int-to-float v9, v4

    cmpl-float v9, v7, v9

    if-lez v9, :cond_0

    int-to-float v7, v4

    :cond_0
    const/4 v6, 0x0

    :cond_1
    add-float v9, v6, v2

    int-to-float v10, v4

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    int-to-float v9, v4

    sub-float v0, v7, v9

    sub-float/2addr v6, v0

    cmpg-float v9, v6, v11

    if-gez v9, :cond_2

    const/4 v6, 0x0

    :cond_2
    int-to-float v7, v4

    :cond_3
    cmpg-float v9, v8, v11

    if-gez v9, :cond_5

    mul-float v0, v13, v8

    add-float/2addr v5, v0

    int-to-float v9, v3

    cmpl-float v9, v5, v9

    if-lez v9, :cond_4

    int-to-float v5, v3

    :cond_4
    const/4 v8, 0x0

    :cond_5
    add-float v9, v8, v1

    int-to-float v10, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    int-to-float v9, v3

    sub-float v0, v5, v9

    sub-float/2addr v8, v0

    cmpg-float v9, v8, v11

    if-gez v9, :cond_6

    const/4 v8, 0x0

    :cond_6
    int-to-float v5, v3

    :cond_7
    cmpl-float v9, v2, v11

    if-lez v9, :cond_8

    cmpl-float v9, v1, v11

    if-lez v9, :cond_8

    iget-object v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sbrviewcore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    float-to-int v10, v6

    float-to-int v11, v8

    float-to-int v12, v2

    float-to-int v13, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    :cond_8
    const/4 v9, 0x1

    return v9
.end method

.method private getBgDrawableBig()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewBigResourceId:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewBigResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getBgDrawableBig_L()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewBigResourceId_L:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig_L:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewBigResourceId_L:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig_L:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig_L:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getBgDrawableSmall()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewSmallResourceId:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewSmallResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getBgDrawableSmall_L()Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewSmallResourceId_L:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall_L:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewSmallResourceId_L:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall_L:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall_L:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static setMagnifierBigResourceId(I)V
    .locals 1

    sput p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewBigResourceId:I

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static setMagnifierBigResourceId_L(I)V
    .locals 1

    sput p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewBigResourceId_L:I

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableBig_L:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static setMagnifierSmallResourceId(I)V
    .locals 1

    sput p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewSmallResourceId:I

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static setMagnifierSmallResourceId_L(I)V
    .locals 1

    sput p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sAirViewSmallResourceId_L:I

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sBgDrawableSmall_L:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private startAnimation(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimating:Z

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowing:Z

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimationStartTime:J

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->invalidate()V

    return-void

    :cond_1
    iget-wide v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimationStartTime:J

    add-long v0, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    iput-wide v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    iget-wide v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iput-wide v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    goto :goto_0
.end method


# virtual methods
.method public hide(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowing:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const-string v0, "SbrAirViewMagnifier.java"

    const-string v1, "AirView Magnifier Hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScaledBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLocalBitmap:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->startAnimation(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->hideImmediately()V

    goto :goto_0
.end method

.method public hideImmediately()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimating:Z

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimating:Z

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
    .locals 11

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v4, "SbrAirViewMagnifier.java"

    const-string v5, "onDraw called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mTimeLeft:J

    add-long/2addr v4, v6

    long-to-float v4, v4

    div-float v3, v4, v8

    invoke-static {v3, v8, v10}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->constrain(FFF)F

    move-result v3

    cmpl-float v4, v3, v10

    if-ltz v4, :cond_0

    iput-boolean v9, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mAnimating:Z

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v9}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->hide(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->invalidate()V

    :cond_1
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowing:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput v8, v2, Landroid/graphics/RectF;->left:F

    iput v8, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->drawMagnifierImageToCanvas(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getBgDrawableSmall()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    add-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v4, 0x437f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/16 v5, 0xff

    invoke-static {v4, v9, v5}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->constrain(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string v4, "SbrAirViewMagnifier.java"

    const-string v5, "onDraw Finished"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getBgDrawableBig()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getBgDrawableSmall_L()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getBgDrawableBig_L()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method

.method public setCurrentViewSize(II)V
    .locals 10

    const/high16 v9, 0x43aa

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42c0

    const/high16 v5, 0x42d8

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewHeight:I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v3, 0x4296

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mBigBgLimit:I

    const-string v2, "SbrAirViewMagnifier.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BSLEE : setCurrentViewSize mHover.y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mToolBarHeight= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBigBgLimit= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mBigBgLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    const/high16 v2, 0x4180

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mBigBgLimit:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    const/high16 v2, 0x4320

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    const/high16 v2, 0x42b2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    const/high16 v2, 0x4323

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    const/high16 v2, 0x42cc

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    const/high16 v2, 0x43a8

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpFixedPosition:I

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    const/high16 v2, 0x41c8

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mBigBgLimit:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    const v2, 0x438d8000

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    const v2, 0x438f8000

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    goto :goto_0

    :cond_3
    iput-boolean v7, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    const/high16 v2, 0x43d0

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeight:I

    const/high16 v2, 0x43d2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpFixedPosition:I

    goto/16 :goto_0
.end method

.method public setLastHover(FF)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContent:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sbrviewcore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public setLayoutScale()V
    .locals 7

    const/high16 v6, 0x43b4

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_0

    int-to-float v4, v2

    div-float/2addr v4, v6

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    :goto_0
    const-string v4, "SbrAirViewMagnifier.java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BSLEE : setLayoutScale scaleValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->density:F

    const-string v4, "SbrAirViewMagnifier.java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BSLEE : setLayoutScale density = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    int-to-float v4, v1

    div-float/2addr v4, v6

    iput v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    goto :goto_0
.end method

.method public setStatusBarHeight(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    return-void
.end method

.method public setToolBarHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    goto :goto_0
.end method

.method public setWindowTop(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mWindowTop:I

    return-void
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;II)V
    .locals 15

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mSmallDisplay:Z

    if-eqz v1, :cond_8

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    if-nez v1, :cond_4

    const/high16 v1, 0x42b2

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float v13, v1, v4

    const/high16 v1, 0x4320

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float v14, v1, v4

    :goto_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mToolBarHeight:I

    add-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    add-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    int-to-float v4, v4

    const/high16 v5, 0x4100

    iget v6, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v1, v4

    float-to-int v4, v13

    sub-int v3, v1, v4

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    if-ge v3, v1, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mWindowTop:I

    if-nez v1, :cond_0

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    :cond_0
    if-gez v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    div-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    sub-int v2, v1, v4

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/high16 v4, 0x4000

    div-float v4, v14, v4

    float-to-int v4, v4

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int/2addr v1, v4

    if-le v2, v1, :cond_3

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/high16 v4, 0x4000

    div-float v4, v14, v4

    float-to-int v4, v4

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int v2, v1, v4

    :cond_3
    :goto_1
    iput v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowX:I

    iput v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mShowY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :goto_2
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->getAirViewBitmap()Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->startAnimation(Z)V

    return-void

    :cond_4
    const/high16 v1, 0x42c0

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float v13, v1, v4

    const v1, 0x438d8000

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float v14, v1, v4

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    add-int v2, v1, v4

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    add-int/2addr v1, v2

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    if-lt v1, v4, :cond_6

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int v2, v1, v4

    :cond_6
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int/2addr v1, v4

    if-le v2, v1, :cond_7

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int v2, v1, v4

    :cond_7
    const/high16 v1, 0x4000

    div-float v1, v14, v1

    float-to-int v1, v1

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    add-int/2addr v1, v4

    if-ge v2, v1, :cond_3

    const/high16 v1, 0x4000

    div-float v1, v14, v1

    float-to-int v1, v1

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mFingerPointMarginSmall:I

    add-int v2, v1, v4

    goto :goto_1

    :cond_8
    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v13, 0x0

    if-gez v2, :cond_9

    const/4 v2, 0x0

    :cond_9
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    add-int/2addr v1, v2

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    if-lt v1, v4, :cond_a

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    add-int/2addr v1, v2

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    sub-int v8, v1, v4

    sub-int/2addr v2, v8

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    if-nez v1, :cond_e

    const/high16 v1, 0x42c0

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float/2addr v1, v4

    const/high16 v4, 0x4000

    div-float v13, v1, v4

    :goto_3
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    if-ge v3, v1, :cond_b

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mWindowTop:I

    if-nez v1, :cond_b

    iget v3, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mStatusBarHeight:I

    :cond_b
    if-gez v3, :cond_c

    const/4 v3, 0x0

    :cond_c
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    add-int/2addr v1, v3

    const/high16 v4, 0x4296

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v1, v4

    float-to-int v4, v13

    add-int/2addr v1, v4

    if-lt v1, v10, :cond_d

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpHeightBG:I

    const/high16 v4, 0x4296

    iget v5, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v1, v4

    float-to-int v4, v13

    add-int/2addr v1, v4

    sub-int v3, v10, v1

    if-gez v3, :cond_d

    const/4 v3, 0x0

    :cond_d
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    div-int/lit8 v7, v1, 0x7

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mLandscapeMode:Z

    if-nez v1, :cond_f

    div-int/lit8 v1, v11, 0x2

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v1, v4

    goto/16 :goto_1

    :cond_e
    const/high16 v1, 0x42c0

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->scaleValue:F

    mul-float/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mScale:F

    div-float/2addr v1, v4

    const/high16 v4, 0x4000

    div-float v13, v1, v4

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->sbrviewcore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isMultiwindowMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_10

    iget v2, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpFixedPosition:I

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v4, v7, 0x3

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_11

    mul-int/lit8 v1, v7, 0x2

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v1, v4

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v4, v7, 0x4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_12

    mul-int/lit8 v1, v7, 0x3

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v1, v4

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mHover:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-int/lit8 v4, v7, 0x5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_13

    mul-int/lit8 v1, v7, 0x4

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v1, v4

    goto/16 :goto_1

    :cond_13
    iget v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mCurrentViewWidth:I

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpWidthBG:I

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mPopUpFixedPosition:I

    sub-int v2, v1, v4

    goto/16 :goto_1

    :cond_14
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;->mContainer:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2
.end method
