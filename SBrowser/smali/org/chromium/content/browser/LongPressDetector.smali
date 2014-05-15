.class Lorg/chromium/content/browser/LongPressDetector;
.super Ljava/lang/Object;
.source "LongPressDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;,
        Lorg/chromium/content/browser/LongPressDetector$LongPressHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mInLongPress:Z

.field private final mLongPressDelegate:Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;

.field private final mLongPressHandler:Landroid/os/Handler;

.field private mMoveConfirmed:Z

.field private mTouchInitialX:I

.field private mTouchInitialY:I

.field private final mTouchSlopSquare:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/LongPressDetector;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lorg/chromium/content/browser/LongPressDetector;->TAP_TIMEOUT:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressDelegate:Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;

    new-instance v2, Lorg/chromium/content/browser/LongPressDetector$LongPressHandler;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/LongPressDetector$LongPressHandler;-><init>(Lorg/chromium/content/browser/LongPressDetector;)V

    iput-object v2, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int v2, v1, v1

    iput v2, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchSlopSquare:I

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/LongPressDetector;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/LongPressDetector;->dispatchLongPress()V

    return-void
.end method

.method private canHandle(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchLongPress()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mInLongPress:Z

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressDelegate:Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/LongPressDetector$LongPressDelegate;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method cancelLongPress()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method cancelLongPressIfNeeded(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/LongPressDetector;->hasPendingMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    iget-object v8, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sget v8, Lorg/chromium/content/browser/LongPressDetector;->TAP_TIMEOUT:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    sget v8, Lorg/chromium/content/browser/LongPressDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iput-boolean v10, p0, Lorg/chromium/content/browser/LongPressDetector;->mInLongPress:Z

    iget-object v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v1, v6

    iget-object v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v6, v5, v6

    float-to-int v2, v6

    mul-int v6, v1, v1

    mul-int v7, v2, v2

    add-int v3, v6, v7

    iget v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchSlopSquare:I

    if-le v3, v6, :cond_0

    iput-boolean v10, p0, Lorg/chromium/content/browser/LongPressDetector;->mInLongPress:Z

    iget-object v6, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method cancelLongPressIfNeeded(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/LongPressDetector;->cancelLongPressIfNeeded(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method confirmOfferMoveEventToJavaScript(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v2, p0, Lorg/chromium/content/browser/LongPressDetector;->mMoveConfirmed:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchInitialX:I

    sub-int v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchInitialY:I

    sub-int v1, v2, v3

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchSlopSquare:I

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/content/browser/LongPressDetector;->mMoveConfirmed:Z

    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/LongPressDetector;->mMoveConfirmed:Z

    return v2
.end method

.method hasPendingMessage()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method isInLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mInLongPress:Z

    return v0
.end method

.method onOfferTouchEventToJavaScript(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mMoveConfirmed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchInitialX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mTouchInitialY:I

    :cond_0
    return-void
.end method

.method sendLongPressGestureForTest()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/LongPressDetector;->dispatchLongPress()V

    goto :goto_0
.end method

.method startLongPressTimerIfNeeded(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/LongPressDetector;->canHandle(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget-object v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mLongPressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/chromium/content/browser/LongPressDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Lorg/chromium/content/browser/LongPressDetector;->TAP_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget v4, Lorg/chromium/content/browser/LongPressDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/LongPressDetector;->mInLongPress:Z

    goto :goto_0
.end method
