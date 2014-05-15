.class public Lorg/chromium/content/browser/ContentViewGestureHandler;
.super Ljava/lang/Object;
.source "ContentViewGestureHandler.java"

# interfaces
.implements Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;,
        Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final DELTA:Ljava/lang/String; = "Delta"

.field static final DISTANCE_X:Ljava/lang/String; = "Distance X"

.field static final DISTANCE_Y:Ljava/lang/String; = "Distance Y"

.field static final DOUBLE_TAP_DRAG_MODE_DETECTION_IN_PROGRESS:I = 0x1

.field static final DOUBLE_TAP_DRAG_MODE_NONE:I = 0x0

.field static final DOUBLE_TAP_DRAG_MODE_ZOOM:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field static final EVENT_CONVERTED_TO_CANCEL:I = 0x1

.field static final EVENT_FORWARDED_TO_NATIVE:I = 0x0

.field static final EVENT_NOT_FORWARDED:I = 0x2

.field static final GESTURE_DOUBLE_TAP:I = 0x1

.field public static final GESTURE_FLING_CANCEL:I = 0x9

.field public static final GESTURE_FLING_START:I = 0x8

.field static final GESTURE_LONG_PRESS:I = 0x4

.field static final GESTURE_LONG_TAP:I = 0xe

.field public static final GESTURE_PINCH_BEGIN:I = 0xa

.field public static final GESTURE_PINCH_BY:I = 0xb

.field public static final GESTURE_PINCH_END:I = 0xc

.field public static final GESTURE_SCROLL_BY:I = 0x6

.field public static final GESTURE_SCROLL_END:I = 0x7

.field public static final GESTURE_SCROLL_START:I = 0x5

.field static final GESTURE_SHOW_PRESSED_STATE:I = 0x0

.field static final GESTURE_SHOW_PRESS_CANCEL:I = 0xd

.field static final GESTURE_SINGLE_TAP_CONFIRMED:I = 0x3

.field static final GESTURE_SINGLE_TAP_UP:I = 0x2

.field static final GESTURE_TOUCH_UP:I = 0xf

.field private static final HIDEURL_MIN_CONTENT_SCROLL_OFFSET:F = 100.0f

.field static final INPUT_EVENT_ACK_STATE_CONSUMED:I = 0x1

.field static final INPUT_EVENT_ACK_STATE_NOT_CONSUMED:I = 0x2

.field static final INPUT_EVENT_ACK_STATE_NO_CONSUMER_EXISTS:I = 0x3

.field static final INPUT_EVENT_ACK_STATE_UNKNOWN:I = 0x0

.field static final SHOW_PRESS:Ljava/lang/String; = "ShowPress"

.field private static final TAG:Ljava/lang/String; = null

.field static final VELOCITY_X:Ljava/lang/String; = "Velocity X"

.field static final VELOCITY_Y:Ljava/lang/String; = "Velocity Y"


# instance fields
.field private mAccumulatedScrollErrorX:F

.field private mAccumulatedScrollErrorY:F

.field private mBlockScrollEvent:Z

.field private mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

.field mCanBeScrolledDiagonally:Z

.field private mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrUrl:Ljava/lang/String;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapDragMode:I

.field public mEventDownTime:J

.field private mEventX:F

.field private mEventY:F

.field private final mExtraParamBundle:Landroid/os/Bundle;

.field private mFlingMayBeActive:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasTouchHandlers:Z

.field private mIgnoreSingleTap:Z

.field public mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mInputEventsDeliveredAtVSync:Z

.field private mIsHorizontalScroll:Z

.field private mIsPointerDownCalled:Z

.field private mJavaScriptIsConsumingGesture:Z

.field private mLastCancelledEvent:Landroid/view/MotionEvent;

.field private mLastRawX:F

.field private mLastRawY:F

.field private mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mLongBeginFrameTime:Z

.field private mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

.field private final mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

.field private mMoveTouchEvent:Z

.field private mNativeScrolling:Z

.field private mNoTouchHandlerForGesture:Z

.field private final mPendingMotionEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPinchEndTime:D

.field private mPinchInProgress:Z

.field private mPrevRawY:F

.field private mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

.field private mScaledTouchSlopSquare:I

.field private mScrollOnMainThread:Z

.field private mSeenFirstScrollEvent:Z

.field private mShowPressIsCalled:Z

.field private mSingleTapX:I

.field private mSingleTapY:I

.field private mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;

.field mSupportZoomControls:Z

.field private mTouchCancelEventSent:Z

.field private mTouchDown:F

.field private mTouchDownXValue:F

.field private mTouchDownYValue:F

.field private mTouchEventTimeoutHandler:Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

.field private mXDistanceScrolled:F

.field private mYDistanceScrolled:F

.field private final mZoomManager:Lorg/chromium/content/browser/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->$assertionsDisabled:Z

    const-class v0, Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->DOUBLE_TAP_TIMEOUT:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;Lorg/chromium/content/browser/ZoomManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mHasTouchHandlers:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchInProgress:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchCancelEventSent:Z

    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mDoubleTapDragMode:I

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F

    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F

    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDown:F

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMoveTouchEvent:Z

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mXDistanceScrolled:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mYDistanceScrolled:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDownXValue:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDownYValue:F

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsHorizontalScroll:Z

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mInputEventsDeliveredAtVSync:Z

    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventDownTime:J

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBlockScrollEvent:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z

    const-wide/high16 v1, -0x4010

    iput-wide v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchEndTime:D

    new-instance v1, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

    invoke-direct {v1, p0, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;-><init>(Lorg/chromium/content/browser/ContentViewGestureHandler;Lorg/chromium/content/browser/ContentViewGestureHandler$1;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchEventTimeoutHandler:Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSupportZoomControls:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCanBeScrolledDiagonally:Z

    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongBeginFrameTime:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mScrollOnMainThread:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    new-instance v1, Lorg/chromium/content/browser/LongPressDetector;

    invoke-direct {v1, p1, p0}, Lorg/chromium/content/browser/LongPressDetector;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    iput-object p3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    new-instance v1, Lorg/chromium/content/browser/SnapScrollController;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-direct {v1, p1, v2}, Lorg/chromium/content/browser/SnapScrollController;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ZoomManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    new-instance v1, Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    invoke-direct {v1}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mInputEventsDeliveredAtVSync:Z

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->initGestureDetectors(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Ljava/util/Deque;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewGestureHandler;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSeenFirstScrollEvent:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSeenFirstScrollEvent:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F

    return v0
.end method

.method static synthetic access$1202(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F

    return p1
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F

    return v0
.end method

.method static synthetic access$1302(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F

    return p1
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F

    return v0
.end method

.method static synthetic access$1402(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F

    return p1
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F

    return v0
.end method

.method static synthetic access$1502(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F

    return p1
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F

    return v0
.end method

.method static synthetic access$1602(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F

    return p1
.end method

.method static synthetic access$1700(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F

    return v0
.end method

.method static synthetic access$1702(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F

    return p1
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/ContentViewGestureHandler;)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F

    return v0
.end method

.method static synthetic access$1902(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewGestureHandler;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->recycleEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/samsung/content/sbrowser/SbrContentViewUtils;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/chromium/content/browser/ContentViewGestureHandler;)D
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchEndTime:D

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBlockScrollEvent:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/chromium/content/browser/ContentViewGestureHandler;IJIILandroid/os/Bundle;)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendLastGestureForVSync(IJIILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/LongPressDetector;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    return-object v0
.end method

.method static synthetic access$2800()I
    .locals 1

    sget v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->DOUBLE_TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2900(Lorg/chromium/content/browser/ContentViewGestureHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setClickXAndY(II)V

    return-void
.end method

.method static synthetic access$3000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/ZoomManager;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/chromium/content/browser/ContentViewGestureHandler;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mScaledTouchSlopSquare:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentViewGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->drainAllPendingEventsUntilNextDown()V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z

    return v0
.end method

.method static synthetic access$802(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    return v0
.end method

.method static synthetic access$902(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    return p1
.end method

.method private drainAllPendingEventsUntilNextDown()V
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->recycleEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->trySendNextEventToNative(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private initGestureDetectors(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int v2, v1, v1

    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mScaledTouchSlopSquare:I

    :try_start_0
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    new-instance v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler$1;-><init>(Lorg/chromium/content/browser/ContentViewGestureHandler;I)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    throw v2
.end method

.method private isTalkbackEnabled()Z
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private obtainActionCancelMotionEvent()Landroid/view/MotionEvent;
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private offerTouchEventToJavaScript(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v7, p1}, Lorg/chromium/content/browser/LongPressDetector;->onOfferTouchEventToJavaScript(Landroid/view/MotionEvent;)V

    iget-boolean v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mHasTouchHandlers:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v7, p1}, Lorg/chromium/content/browser/LongPressDetector;->confirmOfferMoveEventToJavaScript(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_5

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v9, :cond_5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ne v7, v8, :cond_5

    const-string v6, "offerTouchEventToJavaScript:EventCoalesced"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QueueSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    new-array v1, v6, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_3

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v1, v3

    aget-object v6, v1, v3

    invoke-virtual {p1, v3, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-virtual {v4, v6, v7, v1, v8}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->setCanDash(Z)V

    :cond_5
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v7, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendTouchEventToNative(Landroid/view/MotionEvent;)I

    move-result v2

    if-eq v2, v9, :cond_6

    if-ne v2, v5, :cond_7

    :cond_6
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v7, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :cond_7
    if-eq v2, v9, :cond_8

    if-ne v2, v5, :cond_1

    :cond_8
    move v5, v6

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v6, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v6, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    const/16 v1, 0xf

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendGesture(IJIIZLandroid/os/Bundle;)Z

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/LongPressDetector;->cancelLongPressIfNeeded(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/LongPressDetector;->startLongPressTimerIfNeeded(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->canHandle(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrentDownEvent:Landroid/view/MotionEvent;

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ZoomManager;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    if-eqz v9, :cond_2

    if-nez v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->tellNativeScrollingHasEnded(JZ)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->tellNativeScrollingHasEnded(JZ)V

    :cond_3
    return v8
.end method

.method private recycleEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private sendGesture(IJIILandroid/os/Bundle;)Z
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    const/4 v6, 0x0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendGesture(IJIIZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private sendLastGestureForVSync(IJIILandroid/os/Bundle;)Z
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    iget-boolean v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mInputEventsDeliveredAtVSync:Z

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendGesture(IJIIZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 8

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v5, v1

    const/4 v6, 0x0

    move v1, p1

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendGesture(IJIIZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private sendTouchEventToNative(Landroid/view/MotionEvent;)I
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchEventTimeoutHandler:Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->hasTimeoutEvent()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    new-array v1, v6, [Lorg/chromium/content/browser/TouchPoint;

    invoke-static {p1, v1}, Lorg/chromium/content/browser/TouchPoint;->createTouchPoints(Landroid/view/MotionEvent;[Lorg/chromium/content/browser/TouchPoint;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    iget-boolean v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchInProgress:Z

    if-nez v6, :cond_3

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchCancelEventSent:Z

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-interface {v6, v7, v8, v2, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendTouchEvent(JI[Lorg/chromium/content/browser/TouchPoint;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchEventTimeoutHandler:Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->start(J[Lorg/chromium/content/browser/TouchPoint;)V

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchCancelEventSent:Z

    if-nez v4, :cond_0

    iput-boolean v5, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchCancelEventSent:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sget v8, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_CANCEL:I

    invoke-interface {v4, v6, v7, v8, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendTouchEvent(JI[Lorg/chromium/content/browser/TouchPoint;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    goto :goto_0
.end method

.method private setClickXAndY(II)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSingleTapX:I

    iput p2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSingleTapY:I

    return-void
.end method

.method private tellNativeScrollingHasEnded(JZ)V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    if-eqz p3, :cond_0

    const/4 v1, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private trySendNextEventToNative(Landroid/view/MotionEvent;)V
    .locals 2

    sget-boolean v1, Lorg/chromium/content/browser/ContentViewGestureHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendTouchEventToNative(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->recycleEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->trySendNextEventToNative(Landroid/view/MotionEvent;)V

    :cond_3
    return-void
.end method

.method private updateTopControlState()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->getIsScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->TAG:Ljava/lang/String;

    const-string v1, "HIDEURL - ContentView - onScrollChanged : calling down"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onScrollDown()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->TAG:Ljava/lang/String;

    const-string v1, "HIDEURL - ContentView - onScrollChanged : calling up"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->onScrollUp()V

    goto :goto_0
.end method


# virtual methods
.method public ScrollOnMainThread()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mScrollOnMainThread:Z

    sget-object v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->TAG:Ljava/lang/String;

    const-string v1, "ScrollOnMainThread   mScrollOnMainThread = true;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blockScrollEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBlockScrollEvent:Z

    return-void
.end method

.method public canBeScrolledDiagonally(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCanBeScrolledDiagonally:Z

    return-void
.end method

.method canHandle(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelLongPress()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/LongPressDetector;->cancelLongPress()V

    return-void
.end method

.method confirmTouchEvent(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchEventTimeoutHandler:Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->confirmTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/chromium/content/browser/ContentViewGestureHandler;->TAG:Ljava/lang/String;

    const-string v2, "confirmTouchEvent with Empty pending list!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    const-string v1, "confirmTouchEvent:CanceledEvent"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    :cond_2
    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/LongPressDetector;->cancelLongPressIfNeeded(Ljava/util/Iterator;)V

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->recycleEvent(Landroid/view/MotionEvent;)V

    const-string v1, "confirmTouchEvent"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewGestureHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_1
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ZoomManager;->passTouchEventThrough(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->trySendNextEventToNative(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->trySendNextEventToNative(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_3
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->drainAllPendingEventsUntilNextDown()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method endDoubleTapDragMode(Landroid/view/MotionEvent;)V
    .locals 7

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mDoubleTapDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->obtainActionCancelMotionEvent()Landroid/view/MotionEvent;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchEnd(J)V

    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mDoubleTapDragMode:I

    return-void
.end method

.method endFling(J)V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mFlingMayBeActive:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mFlingMayBeActive:Z

    const/16 v1, 0x9

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method fling(JIIII)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->endFling(J)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    if-nez v0, :cond_0

    const/4 v1, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->tellNativeScrollingHasEnded(JZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mFlingMayBeActive:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    const-string v1, "Velocity X"

    mul-int/lit8 v2, p5, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    const-string v1, "Velocity Y"

    mul-int/lit8 v2, p6, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x8

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    return-void
.end method

.method public getCurrUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEventX()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F

    return v0
.end method

.method public getEventY()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F

    return v0
.end method

.method public getJavaScriptsConsumingGesture()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    return v0
.end method

.method getLongPressDetector()Lorg/chromium/content/browser/LongPressDetector;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    return-object v0
.end method

.method getNumberOfPendingMotionEventsForTesting()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public getSingleTapX()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSingleTapX:I

    return v0
.end method

.method public getSingleTapY()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSingleTapY:I

    return v0
.end method

.method public getmLastRawX()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F

    return v0
.end method

.method public getmLastRawY()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F

    return v0
.end method

.method public getmSbrContentViewUtils()Lorg/samsung/content/sbrowser/SbrContentViewUtils;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    return-object v0
.end method

.method hasTouchEventHandlers(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mHasTouchHandlers:Z

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mHasTouchHandlers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_0
    return-void
.end method

.method public intializeHorizontalScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsHorizontalScroll:Z

    return-void
.end method

.method isEventCancelledForTesting(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastCancelledEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHavingTouchEventHandlers()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mHasTouchHandlers:Z

    return v0
.end method

.method public isHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsHorizontalScroll:Z

    return v0
.end method

.method isNativePinching()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchInProgress:Z

    return v0
.end method

.method public isNativeScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    return v0
.end method

.method mockTouchEventTimeout()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchEventTimeoutHandler:Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mockTimeout()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "onTouchEvent"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDownXValue:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDownYValue:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mScrollOnMainThread:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDownXValue:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDownYValue:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4348

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->setIsHorizontalScrollValue(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDown:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDown:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x4220

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMoveTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDown:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setIsScrollUp(Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDown:F

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/LongPressDetector;->cancelLongPressIfNeeded(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCanBeScrolledDiagonally:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/SnapScrollController;->setSnapScrollingMode(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->endFling(J)V

    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->offerTouchEventToJavaScript(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "onTouchEvent"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    move v0, v1

    :goto_4
    return v0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;->setIsHorizontalScrollValue(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "onTouchEvent"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setIsScrollUp(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mXDistanceScrolled:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mYDistanceScrolled:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_c

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMoveTouchEvent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isPinchZoomGestureHandlingInProcess()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPixInt()I

    move-result v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mScrollOnMainThread:Z

    if-eqz v0, :cond_a

    :cond_9
    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mYDistanceScrolled:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x4316

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->getJavaScriptsConsumingGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mYDistanceScrolled:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43fa

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_b
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->updateTopControlState()V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setIsHorizontalScroll(Z)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mTouchDown:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mMoveTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mXDistanceScrolled:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mYDistanceScrolled:F

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->endDoubleTapDragMode(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_f
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const-string v1, "onTouchEvent"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method peekFirstInPendingMotionEventsForTesting()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    return-object v0
.end method

.method public pinchBegin(JII)V
    .locals 7

    const/16 v1, 0xa

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBlockScrollEvent:Z

    return-void
.end method

.method public pinchBy(JIIF)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    const-string v1, "Delta"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0xb

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendLastGestureForVSync(IJIILandroid/os/Bundle;)Z

    iput-boolean v7, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchInProgress:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->isPinchZoomGestureHandlingInProcess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    invoke-virtual {v0, v7}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setPinchZoomGestureHandlingState(Z)V

    :cond_0
    return-void
.end method

.method public pinchEnd(J)V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchEndTime:D

    const/16 v1, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendGesture(IJIILandroid/os/Bundle;)Z

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchInProgress:Z

    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mBlockScrollEvent:Z

    return-void
.end method

.method public registerScrollOrFlingListner(Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-void
.end method

.method resetGestureHandlers()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->obtainActionCancelMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->obtainActionCancelMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ZoomManager;->processTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v1}, Lorg/chromium/content/browser/LongPressDetector;->cancelLongPress()V

    return-void
.end method

.method sendShowPressCancelIfNecessary(Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z

    goto :goto_0
.end method

.method sendShowPressedStateGestureForTesting()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setCurrUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCurrUrl:Ljava/lang/String;

    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSupportZoomControls:Z

    return-void
.end method

.method setIgnoreSingleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z

    return-void
.end method

.method public setImeAdapter(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-void
.end method

.method public setJavaScriptsConsumingGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mJavaScriptIsConsumingGesture:Z

    return-void
.end method

.method public setLongBeginFrameTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongBeginFrameTime:Z

    return-void
.end method

.method public setNativeScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z

    return-void
.end method

.method setTestDependencies(Lorg/chromium/content/browser/LongPressDetector;Landroid/view/GestureDetector;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-void
.end method

.method public setmLastRawX(F)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F

    return-void
.end method

.method public setmLastRawY(F)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F

    return-void
.end method

.method triggerLongTapIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;

    invoke-virtual {v1}, Lorg/chromium/content/browser/LongPressDetector;->isInLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ZoomManager;->isScaleGestureDetectionInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendShowPressCancelIfNecessary(Landroid/view/MotionEvent;)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegisterScrollOrFlingListner()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    return-void
.end method
