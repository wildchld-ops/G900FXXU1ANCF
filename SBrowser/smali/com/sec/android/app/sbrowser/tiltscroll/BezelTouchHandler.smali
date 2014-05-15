.class public Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;
.super Ljava/lang/Object;
.source "BezelTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;
    }
.end annotation


# static fields
.field private static BEZEL_PRESS_TIMEOUT:I = 0x0

.field private static final BEZEL_THRESHOLD:I = 0x64

.field private static final BEZEL_TOUCH:I = 0x1

.field private static final DRAG_THRESHOLD:I = 0x50

.field private static LONGPRESS_TIMEOUT:I

.field private static TAG:Ljava/lang/String;

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mBezelThreshold:I

.field private mBezelTouchState:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownX:I

.field private mLastDownY:I

.field private mMayBeBezelTouch:Z

.field private mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BezelTouchHandler"

    sput-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAP_TIMEOUT:I

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAP_TIMEOUT:I

    sget v1, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->LONGPRESS_TIMEOUT:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->BEZEL_PRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelTouchState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelThreshold:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownX:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$1;-><init>(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelTouchState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isInBezelTouchRegion(I)Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelThreshold:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelThreshold:I

    sub-int v2, v1, v2

    if-le p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    const-string v3, "isInBezelTouchRegion returning false!!"

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelBezelTouch()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelTouchState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;->onBezelTouchFinished()V

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelTouchState:Z

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    return-void
.end method

.method public getMayBeBezelTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v5, 0x50

    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->isInBezelTouchRegion(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v7, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->BEZEL_PRESS_TIMEOUT:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->isInBezelTouchRegion(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    if-le v3, v4, :cond_4

    iget v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    sub-int v4, v3, v4

    if-gt v4, v5, :cond_5

    :cond_4
    iget v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mLastDownY:I

    sub-int/2addr v4, v3

    if-le v4, v5, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    goto :goto_0

    :cond_6
    if-ne v0, v9, :cond_8

    sget-object v4, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    const-string v5, "BezelTouchHandler - processTouchEvent - ACTION_UP !!"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelTouchState:Z

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    goto :goto_0

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    sget-object v4, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    const-string v5, "BezelTouchHandler - processTouchEvent - ACTION_CANCEL !!"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mMayBeBezelTouch:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    goto :goto_0
.end method

.method public setBezelPressTimeOut(I)V
    .locals 0

    sput p1, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->BEZEL_PRESS_TIMEOUT:I

    return-void
.end method

.method public setBezelRegionThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mBezelThreshold:I

    return-void
.end method

.method public setOnBezelTouchListener(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    if-eq v3, p1, :cond_1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    const-string v1, "setOnBezelTouchListener - New listener set before clearing old listener!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    :goto_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    const-string v1, "setOnBezelTouchListener - New listener set !!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->mOnBezelTouchListener:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->TAG:Ljava/lang/String;

    const-string v1, "setOnBezelTouchListener - null"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
