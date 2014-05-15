.class public abstract Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.super Landroid/view/ViewGroup;
.source "SBrowserCVHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;,
        Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;
    }
.end annotation


# static fields
.field private static final NOTIFICATIONS:[I = null

.field private static final TAG:Ljava/lang/String; = "SBrowserCVHolder"

.field private static final TAN_30_DEGREES:D


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field protected mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

.field protected mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field private mCurrentContentView:Lorg/chromium/content/browser/ContentView;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mCurrentTabId:I

.field private mDispatchEventsToChromeView:Z

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFindToolbarShowing:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGutterDistance:F

.field private mInDoubleTap:Z

.field private mInLongPress:Z

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mPostHideKeyboardTask:Ljava/lang/Runnable;

.field private mPrevOrientation:I

.field private mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

.field private mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

.field private mScrollStarted:Z

.field private final mSwipeRegion:F

.field private final mSwipeTimeConstant:D

.field private mWaitingForNtpLoad:Z

.field private mWaitingForSurfaceTexture:Z

.field metrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x403e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->TAN_30_DEGREES:D

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->NOTIFICATIONS:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->NOTIFICATIONS:[I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->NOTIFICATIONS:[I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPrevOrientation:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTabId:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->metrics:Landroid/util/DisplayMetrics;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForNtpLoad:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForSurfaceTexture:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInLongPress:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPrevOrientation:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/R$styleable;->ChromeViewHolder:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGutterDistance:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSwipeRegion:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSwipeTimeConstant:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;)V

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$2;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->initContentViewRenderView()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v2
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->checkForFastScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;)Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDispatchEventsToChromeView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPostHideKeyboardTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->controllerChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInLongPress:Z

    return p1
.end method

.method static synthetic access$900()D
    .locals 2

    sget-wide v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->TAN_30_DEGREES:D

    return-wide v0
.end method

.method private checkForFastScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 18

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    sub-float v8, v14, v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-float v13, v14

    div-float v14, v8, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v14

    float-to-double v2, v14

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0

    sub-double v4, v14, v16

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSwipeTimeConstant:D

    mul-double v6, v14, v4

    mul-double v14, v2, v6

    double-to-float v11, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    sub-float v12, v14, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    sget-object v15, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->RIGHT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    if-ne v14, v15, :cond_1

    move v9, v12

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGutterDistance:F

    cmpg-float v14, v9, v14

    if-gez v14, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    sget-object v15, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->LEFT:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    if-ne v14, v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float v9, v14, v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGutterDistance:F

    goto :goto_0
.end method

.method private checkViewReadyConditions()Z
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForNtpLoad:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForSurfaceTexture:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private controllerChanged()V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "SBrowserCVHolder"

    const-string v6, "APPLOGS:contentView is null, needs to be restored, returning"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getVisibleChromeView()Lorg/chromium/content/browser/ContentView;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    :cond_1
    if-eq v3, v4, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->onControllerChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildCount()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v1, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chrome://newtab/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForNtpLoad:Z

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->isReady()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x0

    :cond_5
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForSurfaceTexture:Z

    goto :goto_0

    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForNtpLoad:Z

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForSurfaceTexture:Z

    goto :goto_0
.end method

.method private initContentViewRenderView()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$4;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$4;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getSbrContentViewRenderView()Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isCurrentContentViewSet()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mSbrContentViewRenderView:Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->getCurrentContentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private propagateEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getVisibleChromeView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setContentChangedListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setContentChangedListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V

    return-void
.end method


# virtual methods
.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SBrowserCVHolder"

    const-string v2, "APPLOGS:ERROR: Caught exception, child view is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableTabSwiping(Z)V
    .locals 0

    return-void
.end method

.method public getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    return-object v0
.end method

.method public getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVisibleChromeView()Lorg/chromium/content/browser/ContentView;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/chromium/content/browser/ContentView;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Lorg/chromium/content/browser/ContentView;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected handleFindInPage(Z)V
    .locals 0

    return-void
.end method

.method public hideKeyboard(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public newTabPageReady(I)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getVisibleChromeView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    move v2, p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-ne v3, v1, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mWaitingForNtpLoad:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->checkViewReadyConditions()Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->NOTIFICATIONS:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPrevOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mPrevOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->configHasChanged(II)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getsSmallWindowSize()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onControllerChanged()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTabId:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTabId:I

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentTabId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isTabCreated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isTabCreationInProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateUrlBarFocus(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateUrlBarFocus(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setContentChangedListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    const-string v1, "SBrowserCVHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLOGS:Current contentView set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setAutoHideFeatureFlag(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setHideUrlBarListener(Lorg/chromium/content/browser/ContentView;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getWindowMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setAutoHideFeatureFlag(Ljava/lang/Boolean;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setContentChangedListener(Lorg/chromium/content/browser/ContentViewCore$ContentChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->initializeWebContentObserver()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1, v4}, Lorg/chromium/content/browser/ContentView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateUrlBarFocus(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateUrlBarFocus(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SBrowserCVHolder"

    const-string v1, "PLACEHOLDER:View is onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->onDestroy()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->NOTIFICATIONS:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const-string v0, "VerificationLog"

    const-string v1, "SbrowserCVHoler - onFinishInflate - start"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->initContentViewRenderView()V

    :cond_0
    const-string v0, "VerificationLog"

    const-string v1, "SbrowserCVHoler - onFinishInflate - end"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameAvailable(Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwap()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->onControllerChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDispatchEventsToChromeView:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDispatchEventsToChromeView:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z

    if-nez v0, :cond_4

    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDispatchEventsToChromeView:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v8}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    throw v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInLongPress:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInLongPress:Z

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v9, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_7
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    goto :goto_0
.end method

.method protected overviewViewInterceptTouchEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processSmallWindowEvents(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDispatchEventsToChromeView:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeContentView(Lorg/chromium/content/browser/ContentView;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SBrowserCVHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS:Removing ContentView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mCurrentContentView:Lorg/chromium/content/browser/ContentView;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 3

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "SBrowserCVHolder can only use a ContentViewListAdapter"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$3;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->controllerChanged()V

    return-void

    :cond_1
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "SBrowserCVHolder can only use a SBrowserTabControl"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mController:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    goto :goto_0
.end method

.method public setHolderToMatchParentWindow(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
