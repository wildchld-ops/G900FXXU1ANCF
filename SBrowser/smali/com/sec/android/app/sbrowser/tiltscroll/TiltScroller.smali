.class public Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;
.super Ljava/lang/Object;
.source "TiltScroller.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;
.implements Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_TILT_SCROLL:I = 0x64

.field private static final DEFAULT_TILT_SCROLL_DELAY:I = 0x5

.field public static final SCROLL_DOWN:I = 0x1

.field public static SCROLL_FIXED_SPEED:I = 0x0

.field public static final SCROLL_LEFT:I = -0x2

.field public static final SCROLL_NONE:I = 0x0

.field public static final SCROLL_RIGHT:I = 0x2

.field public static SCROLL_SPEED_HIGH:I = 0x0

.field public static SCROLL_SPEED_LOW:I = 0x0

.field public static SCROLL_SPEED_MEDIUM:I = 0x0

.field public static SCROLL_SPEED_VERY_HIGH:I = 0x0

.field public static SCROLL_SPEED_ZERO:I = 0x0

.field public static final SCROLL_UP:I = -0x1

.field public static SCROLL_VARYING_SPEED:I

.field private static TAG:Ljava/lang/String;

.field public static TILT_SCROLL_LEFT_RIGHT:I

.field public static TILT_SCROLL_NONE:I

.field public static TILT_SCROLL_UP_DOWN:I

.field private static sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;


# instance fields
.field private mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

.field private mContext:Landroid/content/Context;

.field private mCurrentSurfaceRotation:I

.field private mFixedScrollingSpeed:I

.field private mInBezelTouchState:Z

.field private mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mScrollingSpeedMode:I

.field private mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

.field private mTiltScrollDelay:I

.field private mTiltScrollMode:I

.field private mTiltStartNotificationPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "TiltScroller"

    sput-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    sput v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_NONE:I

    sput v2, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_UP_DOWN:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_LEFT_RIGHT:I

    sput v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_FIXED_SPEED:I

    sput v2, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_VARYING_SPEED:I

    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_LOW:I

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_MEDIUM:I

    const/16 v0, 0xc

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_HIGH:I

    const/16 v0, 0x10

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_VERY_HIGH:I

    sput v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_ZERO:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mInBezelTouchState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltStartNotificationPending:Z

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_UP_DOWN:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollMode:I

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_FIXED_SPEED:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mScrollingSpeedMode:I

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_MEDIUM:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mFixedScrollingSpeed:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollDelay:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$1;-><init>(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->doContinuousTiltScroll(II)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doContinuousTiltScroll(II)V
    .locals 8

    sget-object v4, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[doContinuousTiltScroll] mOnTiltScrollListener ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Scroll by speed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in direction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-interface {v4, p1, p2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;->getActualScroll(II)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->doTiltScroll(FI)Z

    move-result v2

    sget-object v4, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doContinuousTiltScroll : scrolled [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ] with distance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    if-eq v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->stopBezelTouch()V

    sget-object v4, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v5, "doContinuousTiltScroll : Orientation changed..hence stop scrolling and reset bezel touch states!!"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v5, "doContinuousTiltScroll : No more scrolling possible!!"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollDelay:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private doTiltScroll(FI)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doTiltScroll] mOnTiltScrollListener ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Scroll by  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-interface {v0, v4, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;->doTiltScrollBy(FF)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-interface {v0, p1, v4}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;->doTiltScrollBy(FF)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentDeviceOrientation()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, -0x1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;

    return-object v0
.end method

.method private mapTiltDirectionToScrollDirection(II)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR: mapTiltDirectionToScrollDirection - currentSurfaceRotation ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] changed!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v1

    goto :goto_0

    :pswitch_0
    if-ne p1, v7, :cond_3

    if-ne p2, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_1

    if-ne p2, v5, :cond_4

    const/4 v1, -0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    if-ne p1, v6, :cond_6

    if-ne p2, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    :cond_6
    if-ne p1, v7, :cond_1

    if-ne p2, v5, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    const/4 v1, -0x2

    goto :goto_1

    :pswitch_2
    if-ne p1, v6, :cond_9

    if-ne p2, v5, :cond_8

    const/4 v1, -0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    if-ne p1, v7, :cond_1

    if-ne p2, v5, :cond_a

    const/4 v1, -0x2

    goto :goto_1

    :cond_a
    const/4 v1, 0x2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private mapTiltLevelToScrollAmount(I)I
    .locals 3

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_ZERO:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mScrollingSpeedMode:I

    sget v2, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_FIXED_SPEED:I

    if-ne v1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_ZERO:I

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mFixedScrollingSpeed:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mScrollingSpeedMode:I

    sget v2, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_VARYING_SPEED:I

    if-ne v1, v2, :cond_0

    packed-switch p1, :pswitch_data_1

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_ZERO:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_LOW:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_MEDIUM:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_HIGH:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_VERY_HIGH:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setTiltAxisForListener()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->setTiltAxisOfInterest(I)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollMode:I

    sget v3, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_UP_DOWN:I

    and-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_NONE:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    if-ne v2, v5, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->setTiltAxisOfInterest(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->getTiltAxisOfInterest()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollMode:I

    sget v3, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_LEFT_RIGHT:I

    and-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TILT_SCROLL_NONE:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mCurrentSurfaceRotation:I

    if-ne v2, v5, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    or-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->setTiltAxisOfInterest(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->setTiltAxisOfInterest(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    or-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->setTiltAxisOfInterest(I)V

    goto :goto_1
.end method

.method private startBezelTouchListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: startBezelTouchListener - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->setOnBezelTouchListener(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;)V

    goto :goto_0
.end method

.method private startTiltListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: startTiltListener - mSensorHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    sget v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->TILT_LEVEL_CHANGE_MODE:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->registerTiltListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->setTiltAxisForListener()V

    goto :goto_0
.end method

.method private stopBezelTouchListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: stopBezelTouchListener - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->setOnBezelTouchListener(Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler$OnBezelTouchListener;)V

    goto :goto_0
.end method

.method private stopTiltListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: startTiltListener - mSensorHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mSensorHandler:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->unregisterTiltListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;)Z

    goto :goto_0
.end method


# virtual methods
.method public canBeInBezelTouchState()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: canBeInBezelTouchState - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->getMayBeBezelTouch()Z

    move-result v0

    goto :goto_0
.end method

.method public disableOrientationChange()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->getCurrentDeviceOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public enableOrientationChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onBezelTouchFinished()V
    .locals 3

    const/16 v2, 0x64

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "onBezelTouchFinished!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mInBezelTouchState:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->stopTiltListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;->onBezelTouchFinishNotified()V

    :cond_1
    return-void
.end method

.method public onBezelTouchStarted(II)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "onBezelTouchStarted!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mInBezelTouchState:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltStartNotificationPending:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->startTiltListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;->onBezelTouchStartNotified(II)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->stopBezelTouch()V

    return-void
.end method

.method public onTilt(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;)V
    .locals 0

    return-void
.end method

.method public onTiltLevelChanged(III)V
    .locals 4

    const/16 v3, 0x64

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltStartNotificationPending:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltStartNotificationPending:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;->onTiltStarted()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mapTiltLevelToScrollAmount(I)I

    move-result v1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mapTiltDirectionToScrollDirection(II)I

    move-result v0

    if-eqz v0, :cond_3

    sget v2, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_SPEED_ZERO:I

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->stopBezelTouch()V

    sget-object v2, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v3, "onTiltLevelChanged : Orientation changed..hence stop scrolling and reset bezel touch states!!"

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->doContinuousTiltScroll(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: onTouchEvent - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerTiltScrollListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "registerTiltScrollListener - New listener set before clearing old listener!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollMode:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollDelay:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->startBezelTouchListener()V

    return-void
.end method

.method public registerTiltScrollListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "registerTiltScrollListener - New listener set before clearing old listener!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollMode:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mScrollingSpeedMode:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mScrollingSpeedMode:I

    sget v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->SCROLL_FIXED_SPEED:I

    if-ne v0, v1, :cond_1

    iput p4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mFixedScrollingSpeed:I

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollDelay:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->startBezelTouchListener()V

    return-void
.end method

.method public setBezelPressTimeOut(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: setBezelPressTimeOut - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->setBezelPressTimeOut(I)V

    goto :goto_0
.end method

.method public setBezelRegion(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: setBezelRegion - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->setBezelRegionThreshold(I)V

    goto :goto_0
.end method

.method public setTiltScrollDelay(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mTiltScrollDelay:I

    return-void
.end method

.method public stopBezelTouch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: stopBezelTouch - mBezelTouchHandler = null!!"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mBezelTouchHandler:Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tiltscroll/BezelTouchHandler;->cancelBezelTouch()V

    goto :goto_0
.end method

.method public unregisterTiltScrollListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;)Z
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-eq v1, p1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    const-string v2, "unregisterTiltScrollListener - New listener set before clearing old listener!!"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    if-ne v1, p1, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTiltScrollListener - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mOnTiltScrollListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller$OnTiltScrollListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->stopTiltListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->stopBezelTouchListener()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltScroller;->mInBezelTouchState:Z

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
