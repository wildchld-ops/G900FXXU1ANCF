.class Lorg/chromium/content/browser/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ZoomManager$1;,
        Lorg/chromium/content/browser/ZoomManager$ZoomListener;,
        Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;,
        Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PANNING_BLOCKING_TIME:J = 0x32L

.field private static final SPAN_CAPACITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContentViewZoom"

.field private static final bQueueFix:Z


# instance fields
.field private mAccumulatedSpan:F

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mContext:Landroid/content/Context;

.field private mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

.field private mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

.field private mPrevPinchTime:J

.field private mSbrTiltListener:Lorg/samsung/content/sbrowser/SbrTiltListener;

.field private mSpanCount:I

.field private mSpanQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

.field private mStartTimePannigCheck:J

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ZoomManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ZoomManager;->mPrevPinchTime:J

    iput v2, p0, Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I

    iput-object p1, p0, Lorg/chromium/content/browser/ZoomManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    new-instance v0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;-><init>(Lorg/chromium/content/browser/ZoomManager;Lorg/chromium/content/browser/ZoomManager$1;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/ScaleGestureDetector;->setUseTwoFingerSweep(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v3, v0, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrTiltListener;

    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, v1, v2}, Lorg/samsung/content/sbrowser/SbrTiltListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mSbrTiltListener:Lorg/samsung/content/sbrowser/SbrTiltListener;

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;-><init>(Lorg/chromium/content/browser/ZoomManager;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ZoomManager;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/content/browser/ZoomManager;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ZoomManager;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ZoomManager;)Lorg/samsung/content/sbrowser/SbrTiltListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mSbrTiltListener:Lorg/samsung/content/sbrowser/SbrTiltListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/ZoomManager;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ZoomManager;)Landroid/widget/ZoomButtonsController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ZoomManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/chromium/content/browser/ZoomManager;J)J
    .locals 0

    iput-wide p1, p0, Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ZoomManager;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/ZoomManager;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F

    return p1
.end method

.method static synthetic access$516(Lorg/chromium/content/browser/ZoomManager;F)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F

    return v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ZoomManager;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/content/browser/ZoomManager;I)I
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I

    return p1
.end method

.method static synthetic access$708(Lorg/chromium/content/browser/ZoomManager;)I
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method private getZoomControls()Landroid/widget/ZoomButtonsController;
    .locals 5

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentSettings;->shouldDisplayZoomControls()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/ZoomButtonsController;

    iget-object v3, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v3, Lorg/chromium/content/browser/ZoomManager$ZoomListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/chromium/content/browser/ZoomManager$ZoomListener;-><init>(Lorg/chromium/content/browser/ZoomManager;Lorg/chromium/content/browser/ZoomManager$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v2
.end method


# virtual methods
.method dismissZoomPicker()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/ZoomManager;->getZoomControls()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method getZoomControlsViewForTest()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invokeZoomPicker()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/ZoomManager;->getZoomControls()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method isMultiTouchZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->getPermanentlyIgnoreDetectorEvents()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScaleGestureDetectionInProgress()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ZoomManager;->isMultiTouchZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTiltToZoomEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method passTouchEventThrough(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->setTemporarilyIgnoreDetectorEvents(Z)V

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContentViewZoom"

    const-string v2, "ScaleGestureDetector got into a bad state!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v1, Lorg/chromium/content/browser/ZoomManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    invoke-virtual {v4, v3}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->setTemporarilyIgnoreDetectorEvents(Z)V

    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ZoomManager;->isScaleGestureDetectionInProgress()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v4

    if-ne v5, v4, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ZoomManager;->isTiltToZoomEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/content/browser/ZoomManager;->mSbrTiltListener:Lorg/samsung/content/sbrowser/SbrTiltListener;

    invoke-virtual {v4, p1}, Lorg/samsung/content/sbrowser/SbrTiltListener;->ProcessTiltHandle(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v5, :cond_1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v4, "ContentViewZoom"

    const-string v5, "ScaleGestureDetector got into a bad state!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v4, Lorg/chromium/content/browser/ZoomManager;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method updateMultiTouchSupport()V
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager;->mMultiTouchListener:Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentSettings()Lorg/chromium/content/browser/ContentSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentSettings;->supportsMultiTouchZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->setPermanentlyIgnoreDetectorEvents(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateZoomControls()V
    .locals 4

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method
