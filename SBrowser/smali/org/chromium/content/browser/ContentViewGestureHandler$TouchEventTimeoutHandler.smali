.class Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;
.super Ljava/lang/Object;
.source "ContentViewGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventTimeoutHandler"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PENDING_ACK_CANCEL_EVENT:I = 0x2

.field private static final PENDING_ACK_NONE:I = 0x0

.field private static final PENDING_ACK_ORIGINAL_EVENT:I = 0x1

.field private static final QUICK_TOUCH_EVENT_TIMEOUT:I = 0x32

.field private static final TOUCH_EVENT_TIMEOUT:I = 0xc8


# instance fields
.field private mEventTime:J

.field private mHandler:Landroid/os/Handler;

.field private mPendingAckState:I

.field private mQuicTimeOutStart:Z

.field private mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/content/browser/ContentViewGestureHandler;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mQuicTimeOutStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ContentViewGestureHandler;Lorg/chromium/content/browser/ContentViewGestureHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;-><init>(Lorg/chromium/content/browser/ContentViewGestureHandler;)V

    return-void
.end method


# virtual methods
.method public confirmTouchEvent()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    packed-switch v2, :pswitch_data_0

    sget-boolean v1, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Never reached"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    const-string v0, "TouchEventTimeout:ConfirmOriginalEvent"

    invoke-static {v0}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$500(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mEventTime:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    sget v4, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_CANCEL:I

    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->sendTouchEvent(JI[Lorg/chromium/content/browser/TouchPoint;)Z

    iput-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    move v0, v1

    goto :goto_0

    :pswitch_2
    const-string v2, "TouchEventTimeout:ConfirmCancelEvent"

    invoke-static {v2}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    iput v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->drainAllPendingEventsUntilNextDown()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$400(Lorg/chromium/content/browser/ContentViewGestureHandler;)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasTimeoutEvent()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mockTimeout()V
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->hasTimeoutEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->run()V

    return-void
.end method

.method public quickTimeOutStart(J[Lorg/chromium/content/browser/TouchPoint;)V
    .locals 3

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mEventTime:J

    iput-object p3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mQuicTimeOutStart:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x1

    const-string v1, "TouchEventTimeout"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->begin(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPendingMotionEvents:Ljava/util/Deque;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v1, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$100(Lorg/chromium/content/browser/ContentViewGestureHandler;Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->recycleEvent(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$200(Lorg/chromium/content/browser/ContentViewGestureHandler;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mQuicTimeOutStart:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mNoTouchHandlerForGesture:Z
    invoke-static {v1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$302(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->drainAllPendingEventsUntilNextDown()V
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$400(Lorg/chromium/content/browser/ContentViewGestureHandler;)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    :cond_1
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    return-void
.end method

.method public start(J[Lorg/chromium/content/browser/TouchPoint;)V
    .locals 3

    sget-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mPendingAckState:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mEventTime:J

    iput-object p3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mTouchPoints:[Lorg/chromium/content/browser/TouchPoint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mQuicTimeOutStart:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$TouchEventTimeoutHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
