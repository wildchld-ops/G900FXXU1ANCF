.class public Lorg/chromium/content/browser/third_party/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;,
        Lorg/chromium/content/browser/third_party/GestureDetector$SimpleOnGestureListener;,
        Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;,
        Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mDownRawFocusX:F

.field private mDownRawFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private mLastRawFocusX:F

.field private mLastRawFocusY:F

.field private final mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mScrollRawX:F

.field private mScrollRawY:F

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/third_party/GestureDetector;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/third_party/GestureDetector;->TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/third_party/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/third_party/GestureDetector;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mScrollRawX:F

    iput v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mScrollRawY:F

    if-eqz p3, :cond_1

    new-instance v0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;-><init>(Lorg/chromium/content/browser/third_party/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    :goto_0
    iput-object p2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    instance-of v0, p2, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/third_party/GestureDetector;->setOnDoubleTapListener(Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/third_party/GestureDetector;->init(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/third_party/GestureDetector$GestureHandler;-><init>(Lorg/chromium/content/browser/third_party/GestureDetector;)V

    iput-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/third_party/GestureDetector;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/chromium/content/browser/third_party/GestureDetector;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/chromium/content/browser/third_party/GestureDetector;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/third_party/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/third_party/GestureDetector;)Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/third_party/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/third_party/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/third_party/GestureDetector;)Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/third_party/GestureDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mStillDown:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iget-boolean v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsDoubleTapping:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInTapRegion:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    iget-boolean v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    iget-object v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    iget-object v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsLongpressEnabled:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    move v2, v3

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mMaximumFlingVelocity:I

    mul-int v4, v3, v3

    iput v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mTouchSlopSquare:I

    mul-int v4, v2, v2

    iput v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapTouchSlopSquare:I

    mul-int v4, v1, v1

    iput v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapSlopSquare:I

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Lorg/chromium/content/browser/third_party/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRawDistanceX()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mScrollRawX:F

    return v0
.end method

.method public getRawDistanceY()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mScrollRawY:F

    return v0
.end method

.method public isLongpressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 45

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    if-nez v39, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v5, 0xff

    move/from16 v39, v0

    const/16 v40, 0x6

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1

    const/16 v23, 0x1

    :goto_0
    if-eqz v23, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    :goto_1
    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v6, :cond_4

    move/from16 v0, v28

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    const/16 v28, -0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v39

    add-float v29, v29, v39

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v39

    add-float v30, v30, v39

    goto :goto_3

    :cond_4
    if-eqz v23, :cond_6

    add-int/lit8 v11, v6, -0x1

    :goto_4
    int-to-float v0, v11

    move/from16 v39, v0

    div-float v15, v29, v39

    int-to-float v0, v11

    move/from16 v39, v0

    div-float v16, v30, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    const/16 v18, 0x0

    and-int/lit16 v0, v5, 0xff

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    :cond_5
    :goto_5
    :pswitch_0
    return v18

    :cond_6
    move v11, v6

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownRawFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownRawFocusY:F

    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/third_party/GestureDetector;->cancelTaps()V

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownRawFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownRawFocusY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v38

    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v0, v6, :cond_5

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v39

    mul-float v35, v36, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v39

    mul-float v37, v38, v39

    add-float v12, v35, v37

    const/16 v39, 0x0

    cmpg-float v39, v12, v39

    if-gez v39, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    if-eqz v39, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/content/browser/third_party/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v39

    if-eqz v39, :cond_d

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownRawFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownRawFocusY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/MotionEvent;->recycle()V

    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInTapRegion:Z

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mStillDown:Z

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v39, v0

    if-eqz v39, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v41

    sget v43, Lorg/chromium/content/browser/third_party/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v43, v0

    add-long v41, v41, v43

    sget v43, Lorg/chromium/content/browser/third_party/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v43, v0

    add-long v41, v41, v43

    invoke-virtual/range {v39 .. v42}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v41

    sget v43, Lorg/chromium/content/browser/third_party/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v43, v0

    add-long v41, v41, v43

    invoke-virtual/range {v39 .. v42}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    sget v41, Lorg/chromium/content/browser/third_party/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    invoke-virtual/range {v39 .. v42}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    move/from16 v39, v0

    if-nez v39, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusX:F

    move/from16 v39, v0

    sub-float v26, v39, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusY:F

    move/from16 v39, v0

    sub-float v27, v39, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusX:F

    move/from16 v39, v0

    sub-float v24, v39, v13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusY:F

    move/from16 v39, v0

    sub-float v25, v39, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mScrollRawX:F

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mScrollRawY:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v39, v0

    if-eqz v39, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v39, v0

    if-eqz v39, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusX:F

    move/from16 v39, v0

    sub-float v39, v15, v39

    move/from16 v0, v39

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDownFocusY:F

    move/from16 v39, v0

    sub-float v39, v16, v39

    move/from16 v0, v39

    float-to-int v9, v0

    mul-int v39, v8, v8

    mul-int v40, v9, v9

    add-int v10, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mTouchSlopSquare:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-le v10, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusY:F

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInTapRegion:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-le v10, v0, :cond_5

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_5

    :cond_10
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v39

    const/high16 v40, 0x3f80

    cmpl-float v39, v39, v40

    if-gez v39, :cond_11

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v39

    const/high16 v40, 0x3f80

    cmpl-float v39, v39, v40

    if-ltz v39, :cond_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mLastRawFocusY:F

    goto/16 :goto_5

    :pswitch_5
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mStillDown:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/MotionEvent;->recycle()V

    :cond_13
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    if-eqz v39, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_14
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsDoubleTapping:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    move/from16 v39, v0

    if-eqz v39, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/third_party/GestureDetector;->mInLongPress:Z

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v39, v0

    if-eqz v39, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v18

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    const/16 v39, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v32

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v39, v39, v40

    if-gtz v39, :cond_18

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v39, v39, v40

    if-lez v39, :cond_12

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/third_party/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/third_party/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    goto/16 :goto_8

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/third_party/GestureDetector;->cancel()V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/third_party/GestureDetector;->mDoubleTapListener:Lorg/chromium/content/browser/third_party/GestureDetector$OnDoubleTapListener;

    return-void
.end method
