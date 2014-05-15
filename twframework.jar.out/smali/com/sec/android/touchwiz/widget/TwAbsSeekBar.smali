.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwProgressBar;
.source "TwAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

.field private final debug:Z

.field private mDisabledAlpha:F

.field private mHoverUIEnabled:I

.field private mHoveringLevel:I

.field private mIsDisableCompensationTouchArea:Z

.field private mIsTouch:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScale:F

.field private mSeekThumbFontBoldStyle:Z

.field private mSeekThumbFontColor:I

.field private mSeekThumbFontEnable:Z

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSeekThumbFontSize:F

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosY:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->debug:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    const/high16 v4, 0x4170

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    sget-object v4, Ltouchwiz/R$styleable;->TwSeekBar:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbOffset()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbOffset(I)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    const/4 v4, 0x5

    const/high16 v5, 0x205

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    const/4 v4, 0x6

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    if-lez v4, :cond_0

    instance-of v9, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v9, :cond_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    sub-int v0, v9, v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v0, v7

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    int-to-float v9, v0

    mul-float/2addr v9, p3

    float-to-int v9, v9

    add-int v6, v9, v4

    const/high16 v9, -0x8000

    if-ne p4, v9, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int v9, v6, v7

    invoke-virtual {p2, v6, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    return-void

    :cond_2
    move v8, p4

    add-int v1, p4, v5

    goto :goto_0
.end method

.method private setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    return-void

    :cond_0
    move v1, p4

    add-int v3, p4, v6

    goto :goto_0
.end method

.method private trackHoverEvent(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz v7, :cond_2

    if-le v7, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4

    const/4 v4, 0x0

    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    float-to-int v8, v3

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_5

    const/high16 v4, 0x3f80

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_7

    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_8

    const/high16 v4, 0x3f80

    goto :goto_1

    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_9

    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_2

    const/4 v4, 0x0

    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_3

    const/high16 v4, 0x3f80

    goto :goto_1

    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    :cond_4
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_5

    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_6

    const/high16 v4, 0x3f80

    goto :goto_1

    :cond_6
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_7

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void

    :cond_3
    const/high16 v3, 0x437f

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSeekThumbFontColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    return v0
.end method

.method public getSeekThumbFontSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getThumbCenterPosX()I
    .locals 3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    return v0
.end method

.method public getThumbCenterPosY()I
    .locals 3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v1

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v0, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v4, v8, v9

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v9, v9

    sub-float v4, v8, v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method onHoverChanged(III)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v1, v4

    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.hovering_ui"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    :cond_1
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    if-ne v5, v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackHoverEvent(Landroid/view/MotionEvent;)V

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_3
    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackHoverEvent(Landroid/view/MotionEvent;)V

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_1

    :cond_5
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    goto :goto_1
.end method

.method onKeyChange()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_2
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3

    const/high16 v2, -0x8000

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressWidth()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressWidth()I

    move-result p1

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v0, v5, 0x2

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    invoke-direct {p0, p2, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingHover(III)V
    .locals 0

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setHoverPopupType(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setHoverPopupType(I)V

    goto :goto_0
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeekThumbFontColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    return-void
.end method

.method public setSeekThumbFontEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    return-void
.end method

.method public setSeekThumbFontSize(I)V
    .locals 2

    if-gez p1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    :goto_0
    return-void

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
