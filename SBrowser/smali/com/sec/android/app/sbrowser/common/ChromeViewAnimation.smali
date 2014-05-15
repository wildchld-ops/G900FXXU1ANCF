.class public Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;
.super Landroid/widget/FrameLayout;
.source "ChromeViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$6;,
        Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;,
        Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;,
        Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final USE_FREEZE_SURFACE_DISPLAY:Z = false

.field private static final USE_TOAST_TO_WORKAROUND_FLICKER_WHEN_ANIMATION_STARTS:Z = true


# instance fields
.field private final CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

.field private final CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

.field private final DEBUG_TRACE:Z

.field private mAnimBeginTime:D

.field private final mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

.field private mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

.field private mAnimViewAFTER_dScale:F

.field private mAnimViewAFTER_dx:F

.field private mAnimViewAFTER_dy:F

.field private mAnimViewAFTER_dz:F

.field private mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

.field private mAnimViewBEFORE_dScale:F

.field private mAnimViewBEFORE_dx:F

.field private mAnimViewBEFORE_dy:F

.field private mAnimViewBEFORE_dz:F

.field private mAnimating:Z

.field private mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

.field private mCamera1:Landroid/graphics/Camera;

.field private mCamera2:Landroid/graphics/Camera;

.field private mContext:Landroid/app/Activity;

.field private mDepthZ:F

.field private mFromDegrees:F

.field private mH:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mNewWebView:Lorg/chromium/content/browser/ContentView;

.field private mOldPriority:Ljava/lang/Integer;

.field mOldWebView:Lorg/chromium/content/browser/ContentView;

.field private mToDegrees:F

.field private mToastScreenshotFrame:Landroid/widget/FrameLayout;

.field private mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

.field mWebView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mH:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->DEBUG_TRACE:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mH:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->DEBUG_TRACE:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->CONFIG___ANIMATE_ON_NEW_BROWSER_WINDOW:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->CONFIG___ANIMATE_ON_WEB_LINK_CLICK:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$2;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mH:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->DEBUG_TRACE:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$5;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->init(Landroid/content/Context;)V

    return-void
.end method

.method private _(F)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Lcom/sec/android/app/sbrowser/common/AnimView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Lcom/sec/android/app/sbrowser/common/AnimView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private createWindowWithView(Landroid/view/View;)V
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    const/16 v3, 0x1e0

    const/16 v0, 0x320

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v5, 0x0

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x0

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0x788

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v5, 0x1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v5, 0x7d5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x33

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface {v4, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private dispatchDraw_SlideLeftAnimation_3D(Landroid/graphics/Canvas;)V
    .locals 22

    const/16 v19, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dz:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dz:F

    sub-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4034

    mul-double/2addr v5, v7

    double-to-int v0, v5

    move/from16 v20, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    if-ne v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dx:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    cmpl-float v2, v21, v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    :cond_1
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, v20

    int-to-float v2, v0

    sub-float v2, v4, v2

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    const v6, 0x777777

    const v7, 0x77777777

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v5, v3

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v20

    int-to-float v2, v0

    sub-float v6, v4, v2

    const/high16 v2, 0x3f80

    add-float v9, v21, v2

    move-object/from16 v5, p1

    move v7, v3

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    if-ne v2, v5, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    if-ne v2, v5, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dx:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float v4, v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v2, v5

    cmpl-float v2, v21, v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/AnimView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dScale:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/high16 v5, 0x3f80

    sub-float v21, v2, v5

    :cond_5
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, v20

    int-to-float v2, v0

    add-float v14, v4, v2

    const v16, 0x77777777

    const v17, 0x777777

    sget-object v18, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v11, v1

    move v12, v4

    move v13, v3

    move v15, v3

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v20

    int-to-float v2, v0

    add-float v8, v4, v2

    const/high16 v2, 0x3f80

    add-float v9, v21, v2

    move-object/from16 v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getChildStaticTransformation_RotateOnYAxisAnimation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 17

    const-wide/high16 v1, 0x4089

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getWidth()I

    move-result v13

    int-to-double v3, v13

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    if-eqz v13, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-double v13, v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimBeginTime:D

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4089

    div-double v11, v13, v15

    const-wide/high16 v13, 0x3ff0

    cmpl-double v13, v11, v13

    if-lez v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    const-wide/high16 v11, 0x3ff0

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    double-to-float v14, v11

    invoke-interface {v13, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    float-to-double v11, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mFromDegrees:F

    const/high16 v13, -0x3d4c

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToDegrees:F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mDepthZ:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mFromDegrees:F

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToDegrees:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mFromDegrees:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-double v15, v15

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    double-to-float v9, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float v7, v13, v14

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mCamera1:Landroid/graphics/Camera;

    const-wide/high16 v13, 0x3ff0

    sub-double/2addr v13, v11

    double-to-float v5, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/animation/Transformation;->setAlpha(F)V

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mDepthZ:F

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14, v7}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v6, v9}, Landroid/graphics/Camera;->rotateY(F)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    neg-float v15, v7

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    neg-float v13, v7

    const/high16 v14, -0x8000

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/4 v13, 0x0

    invoke-virtual {v10, v7, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_2

    const/high16 v13, 0x42b4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mFromDegrees:F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToDegrees:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToDegrees:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mFromDegrees:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v11

    double-to-float v9, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float v7, v13, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mCamera2:Landroid/graphics/Camera;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x41a0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    const/high16 v13, 0x42b4

    invoke-virtual {v6, v13}, Landroid/graphics/Camera;->rotateY(F)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    neg-double v15, v3

    double-to-float v15, v15

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    const/4 v13, 0x0

    invoke-virtual {v6, v7, v13, v7}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v6, v9}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v13, v7

    const/4 v14, 0x0

    neg-float v15, v7

    invoke-virtual {v6, v13, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v6, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->invalidate()V

    :goto_1
    const/4 v13, 0x1

    :goto_2
    return v13

    :cond_3
    double-to-float v5, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->finishAnimation()V

    goto :goto_1

    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v13

    goto :goto_2
.end method

.method private getChildStaticTransformation_SlideLeftAnimation_2D(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 16

    const-wide v1, 0x4097700000000000L

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getWidth()I

    move-result v12

    int-to-double v5, v12

    const-wide/high16 v3, 0x4024

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    if-eqz v12, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimBeginTime:D

    sub-double/2addr v12, v14

    const-wide v14, 0x4097700000000000L

    div-double v10, v12, v14

    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    const-wide/high16 v10, 0x3ff0

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    double-to-float v13, v10

    invoke-interface {v12, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    float-to-double v10, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4024

    add-double/2addr v14, v5

    mul-double/2addr v14, v10

    sub-double v7, v12, v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1

    double-to-float v12, v7

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_2

    add-double v12, v7, v5

    const-wide/high16 v14, 0x4024

    add-double/2addr v12, v14

    double-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->invalidate()V

    :goto_0
    const/4 v12, 0x1

    :goto_1
    return v12

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->finishAnimation()V

    goto :goto_0

    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v12

    goto :goto_1
.end method

.method private getChildStaticTransformation_SlideLeftAnimation_3D(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 24

    const-wide v3, 0x407f400000000000L

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v8, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimBeginTime:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    const-wide v22, 0x407f400000000000L

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v20, 0x3f80

    cmpl-float v20, v17, v20

    if-lez v20, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    const/high16 v17, 0x3f80

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    const v20, 0x3f28f5c2

    mul-float v6, v20, v8

    const v5, 0x3e4ccccd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    const v21, 0x3f4ccccd

    div-float v21, v17, v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    const v20, 0x3f4ccccd

    cmpl-float v20, v17, v20

    if-lez v20, :cond_1

    const/high16 v18, 0x3f80

    :cond_1
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gez v20, :cond_2

    const/16 v18, 0x0

    :cond_2
    const/high16 v20, 0x3f80

    cmpl-float v20, v18, v20

    if-lez v20, :cond_3

    const/high16 v18, 0x3f80

    :cond_3
    const/16 v20, 0x0

    mul-float v21, v18, v6

    sub-float v15, v20, v21

    const/16 v16, 0x0

    move/from16 v13, v18

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getTitleBarHeight()F

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->get_dy(FZ)F

    move-result v20

    mul-float v20, v20, v7

    add-float v12, v16, v20

    add-float v12, v12, v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->get_scale(FZ)F

    move-result v10

    sub-float v20, v7, v19

    div-float v9, v20, v7

    const/high16 v20, 0x3f80

    sub-float v20, v9, v20

    mul-float v20, v20, v13

    const/high16 v21, 0x3f80

    add-float v20, v20, v21

    mul-float v10, v10, v20

    const/high16 v20, 0x4000

    div-float v20, v8, v20

    const/high16 v21, 0x3f80

    sub-float v21, v21, v10

    mul-float v20, v20, v21

    add-float v11, v15, v20

    invoke-virtual {v14, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dx:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dy:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dz:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE_dScale:F

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    const v21, 0x3e4ccccd

    sub-float v21, v17, v21

    const v22, 0x3f4ccccd

    div-float v21, v21, v22

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    const v20, 0x3e4ccccd

    cmpg-float v20, v17, v20

    if-gez v20, :cond_5

    const/16 v18, 0x0

    :cond_5
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gez v20, :cond_6

    const/16 v18, 0x0

    :cond_6
    const/high16 v20, 0x3f80

    cmpl-float v20, v18, v20

    if-lez v20, :cond_7

    const/high16 v18, 0x3f80

    :cond_7
    const/high16 v20, 0x3f80

    sub-float v20, v20, v18

    mul-float v15, v6, v20

    const/16 v16, 0x0

    const/high16 v20, 0x3f80

    sub-float v13, v20, v18

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->get_dy(FZ)F

    move-result v20

    mul-float v20, v20, v7

    add-float v12, v16, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->get_scale(FZ)F

    move-result v10

    const/high16 v20, 0x4000

    div-float v20, v8, v20

    const/high16 v21, 0x3f80

    sub-float v21, v21, v10

    mul-float v20, v20, v21

    add-float v11, v15, v20

    invoke-virtual {v14, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dx:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dy:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dz:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER_dScale:F

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/high16 v20, 0x3f00

    cmpg-float v20, v17, v20

    if-gez v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->addView(Landroid/view/View;I)V

    :cond_9
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->invalidate()V

    :goto_1
    const/16 v20, 0x1

    :goto_2
    return v20

    :cond_a
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/high16 v20, 0x3f00

    cmpl-float v20, v17, v20

    if-lez v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->finishAnimation()V

    goto :goto_1

    :cond_c
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v20

    goto :goto_2
.end method

.method private getTitleBarHeight()F
    .locals 2

    const/high16 v0, 0x42a6

    const/high16 v1, 0x42a6

    return v1
.end method

.method private get_dy(FZ)F
    .locals 7

    const/high16 v6, 0x44c2

    const/high16 v5, 0x4292

    if-eqz p2, :cond_0

    const/high16 v0, 0x4292

    const/high16 v1, 0x44c2

    const/high16 v2, 0x4387

    const/high16 v3, 0x43ca

    const/high16 v0, 0x437b

    const v1, 0x44494000

    const/high16 v2, 0x4387

    const v3, 0x43e38000

    mul-float v4, v2, p1

    add-float/2addr v4, v1

    div-float v4, v0, v4

    mul-float/2addr v4, v1

    sub-float v4, v0, v4

    div-float/2addr v4, v3

    :goto_0
    return v4

    :cond_0
    const/high16 v4, 0x4387

    mul-float/2addr v4, p1

    add-float/2addr v4, v6

    div-float v4, v5, v4

    mul-float/2addr v4, v6

    sub-float v4, v5, v4

    const/high16 v5, 0x43ca

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method private get_scale(FZ)F
    .locals 6

    const/high16 v5, 0x44c2

    if-eqz p2, :cond_0

    const/high16 v0, 0x4292

    const/high16 v1, 0x44c2

    const/high16 v2, 0x4387

    const/high16 v3, 0x43ca

    const/high16 v0, 0x437b

    const v1, 0x44494000

    const/high16 v2, 0x4387

    const v3, 0x43e38000

    mul-float v4, v2, p1

    add-float/2addr v4, v1

    div-float v4, v1, v4

    :goto_0
    return v4

    :cond_0
    const/high16 v4, 0x4387

    mul-float/2addr v4, p1

    add-float/2addr v4, v5

    div-float v4, v5, v4

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mCamera1:Landroid/graphics/Camera;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mCamera2:Landroid/graphics/Camera;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private maximizeCurrentThreadPriority()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldPriority:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldPriority:Ljava/lang/Integer;

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method private overrideWebView(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    const v3, 0x7f05000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    goto :goto_0
.end method

.method private restoreCurrentThreadPriority()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldPriority:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldPriority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mOldPriority:Ljava/lang/Integer;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$6;->$SwitchMap$com$sec$android$app$sbrowser$common$ChromeViewAnimation$AnimationType:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->dispatchDraw_SlideLeftAnimation_3D(Landroid/graphics/Canvas;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finishAnimation()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->restoreCurrentThreadPriority()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->overrideWebView(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$4;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBrowserTabFocusListener()Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mBrowserTabFocusListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$BrowserTabFocusListener;

    return-object v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$6;->$SwitchMap$com$sec$android$app$sbrowser$common$ChromeViewAnimation$AnimationType:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildStaticTransformation_SlideLeftAnimation_2D(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildStaticTransformation_RotateOnYAxisAnimation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->getChildStaticTransformation_SlideLeftAnimation_3D(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWebPageNavegationListener()Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebPageNavegationListener:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$WebPageNavegationListener;

    return-object v0
.end method

.method protected initializeAnimation(Lorg/chromium/content/browser/ContentView;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SnapshotView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/SnapshotView;->setScreenShot(Lorg/chromium/content/browser/ContentView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebView:Lorg/chromium/content/browser/ContentView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040088

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SnapshotView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SnapshotView;->setScreenShot(Lorg/chromium/content/browser/ContentView;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->createWindowWithView(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/AnimView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/AnimView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimType:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$AnimationType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/AnimView;->setShadowEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/AnimView;->setShadowEnabled(Z)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->setStaticTransformationsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewBEFORE:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/AnimView;->setShadowEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/AnimView;->setShadowEnabled(Z)V

    goto :goto_0
.end method

.method protected startAnimation_PART1(Lorg/chromium/content/browser/ContentView;Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mWebView:Lorg/chromium/content/browser/ContentView;

    if-eq v1, p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/WebLiveProxy;->setWebView(Lorg/chromium/content/browser/ContentView;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->startAnimation_PART2()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mContext:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mToastScreenshotFrame:Landroid/widget/FrameLayout;

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/common/SnapshotView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimViewAFTER:Lcom/sec/android/app/sbrowser/common/AnimView;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SnapshotView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/SnapshotView;->setScreenShot(Lorg/chromium/content/browser/ContentView;)V

    goto :goto_0
.end method

.method protected startAnimation_PART2()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->overrideWebView(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->maximizeCurrentThreadPriority()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimating:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/ChromeViewAnimation;->mAnimBeginTime:D

    return-void
.end method
