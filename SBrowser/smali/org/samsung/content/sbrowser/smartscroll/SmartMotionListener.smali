.class public Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;
.super Ljava/lang/Object;
.source "SmartMotionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;,
        Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    }
.end annotation


# static fields
.field private static final LONG_DURATION:I = 0x5

.field private static final LOW_DURATION:I = 0x2

.field private static final MID_DURATION:I = 0x4

.field private static final SMART_SCROLL_DOWN:I = 0x2

.field private static final SMART_SCROLL_GUIDE_CLEAR:I = 0x2

.field private static final SMART_SCROLL_LEFT:I = 0x3

.field private static final SMART_SCROLL_MOVE:I = 0x1

.field private static final SMART_SCROLL_NONE:I = 0x0

.field private static final SMART_SCROLL_NONE_FACE_IN:I = 0x5

.field private static final SMART_SCROLL_OVERLAP_CLEAR:I = 0x3

.field private static final SMART_SCROLL_POWER_RELEASE:I = 0x5

.field private static final SMART_SCROLL_RIGHT:I = 0x4

.field private static final SMART_SCROLL_SPEED_FAST:I = 0x32

.field private static final SMART_SCROLL_START:I = 0x4

.field private static final SMART_SCROLL_UP:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mCheckDoSmartScroll:Z

.field private mCheckEventCount:I

.field private mCheckFaceDetected:Z

.field private mCheckSendResetEvent:Z

.field private mCheckStartMotionListener:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollX:I

.field private mCurrentScrollY:I

.field private mDoScrollMove:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field private mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

.field private mSmartMotionRecognitionStartTime:I

.field private mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

.field private mSmartScrollBlockAmountX:F

.field private mSmartScrollBlockAmountY:F

.field private mSmartScrollBlockSpeedFastX:I

.field private mSmartScrollBlockSpeedFastY:I

.field private mSmartScrollBlockSpeedNormalX:I

.field private mSmartScrollBlockSpeedNormalY:I

.field private mSmartScrollDirection:I

.field private mSmartScrollGazeTimeX:F

.field private mSmartScrollGazeTimeY:F

.field private mSmartScrollMode:Z

.field private mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

.field private mSmartScrollSpeed:I

.field private mSmartScrollSpeedFastX:I

.field private mSmartScrollSpeedFastY:I

.field private mSmartScrollSpeedNormalX:I

.field private mSmartScrollSpeedNormalY:I

.field private mSmartScrollTimeBetweenBlocksX:I

.field private mSmartScrollTimeBetweenBlocksY:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartMotionListener"

    sput-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollMode:Z

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedFastX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedFastY:I

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockAmountX:F

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockAmountY:F

    iput v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollTimeBetweenBlocksX:I

    iput v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollTimeBetweenBlocksY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockSpeedNormalX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockSpeedFastX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockSpeedNormalY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockSpeedFastY:I

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollGazeTimeX:F

    iput v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollGazeTimeY:F

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I

    const/16 v0, 0xe

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeed:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionRecognitionStartTime:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckEventCount:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckDoSmartScroll:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCurrentScrollX:I

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCurrentScrollY:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckStartMotionListener:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckFaceDetected:Z

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$2;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/SbrContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckStartMotionListener:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->doSmartMotionScroll()V

    return-void
.end method

.method static synthetic access$1200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    return-object p1
.end method

.method static synthetic access$200(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalY:I

    return v0
.end method

.method static synthetic access$300(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->handleSmartMotionScrolling(II)V

    return-void
.end method

.method static synthetic access$402(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;I)I
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I

    return p1
.end method

.method static synthetic access$500(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    return p1
.end method

.method static synthetic access$702(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z

    return p1
.end method

.method static synthetic access$802(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckFaceDetected:Z

    return p1
.end method

.method static synthetic access$900(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    return-object v0
.end method

.method static synthetic access$902(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;)Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    return-object p1
.end method

.method private declared-synchronized doSmartMotionScroll()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeed:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionRecognitionStartTime:I

    sub-int v2, v4, v5

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartMotionScroll smartScrollDuration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartMotionScroll mSmartMotionScrollSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I

    invoke-direct {p0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->isEdgeScrolling(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setSmartMotionScrollAngle(I)V

    :cond_1
    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_5

    :cond_2
    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollGazeTimeY:F

    float-to-int v4, v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    :cond_4
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_5
    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    :cond_6
    :try_start_2
    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollGazeTimeX:F

    float-to-int v4, v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v1, v3, -0x1

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartMotionScroll:checkDirection:SMART_MOTION_SCROLL_UP:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_1
    move v1, v3

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartMotionScroll:checkDirection:SMART_MOTION_SCROLL_DOWN:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v1, v3, -0x1

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_b

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartMotionScroll:checkDirection:SMART_MOTION_SCROLL_LEFT:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V

    goto/16 :goto_0

    :pswitch_3
    move v1, v3

    sget-boolean v4, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v4, :cond_c

    sget-object v4, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSmartMotionScroll:checkDirection:SMART_MOTION_SCROLL_RIGHT:offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleSmartMotionScrolling(II)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->isEdgeScrolling(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setSmartMotionScrollAngle(I)V

    :cond_0
    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I

    if-ne v0, p1, :cond_6

    iget v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeed:I

    if-ne v0, p2, :cond_3

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    :cond_4
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    :goto_1
    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollDirection:I

    iput p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeed:I

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmartMotionScrolling:mSbrContentViewCore.getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmartMotionScrolling:mSmartScrollBlockAmountY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollBlockAmountY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    goto :goto_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionRecognitionStartTime:I

    goto :goto_1
.end method

.method private init()V
    .locals 3

    const/16 v2, 0x32

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v1, "init entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedFastX:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedNormalY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->getSpeed()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedFastY:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkAccelerationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedFastX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSpeedFastY:I

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$1;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    :cond_2
    return-void
.end method

.method private isEdgeScrolling(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling getScrollXY().x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getScrollXY().y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling getWidth():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdgeScrolling getContentSize().x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getContentSize().y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p1, v0, :cond_2

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    iget-boolean v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_3

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckSendResetEvent:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isEnableSmartMotionListener()Z
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDelayWakeRelease()V
    .locals 4

    const/4 v3, 0x5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendStartSmartScroll()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setSmartMotionScrollAngle(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->isEnableSmartMotionListener()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartMotionScrollAngle this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMotionSensorManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/motion/MotionRecognitionManager;->setSmartMotionAngle(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v1, "end called setSmartMotionScrollAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setStartSmartScroll()V
    .locals 3

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setWakeLock(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v1, "SmartMotionListener  setWakeLock() mWakeLock.acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v1, "SmartMotionListener  setWakeLock() mWakeLock.released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showGuideView()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckStartMotionListener:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckFaceDetected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkVisualFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRListener mSmartMotionGuideView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->setMotionState(I)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->add()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckFaceDetected:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    invoke-virtual {v0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->setMotionState(I)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    invoke-virtual {v0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->setGyroSumDy(I)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->show()Z

    :cond_3
    return-void
.end method

.method public declared-synchronized startSmartScroll()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->isEnableSmartMotionListener()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSmartMotionScroll this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMotionSensorManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckStartMotionListener:Z

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->init()V

    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/high16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    sget-object v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v2, "end called registerSmartMotionScroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x2000000a

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopSmartScroll()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->isEnableSmartMotionListener()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSmartMotionScroll this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMotionSensorManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->setEnableVSync(Z)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    :cond_1
    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mCheckStartMotionListener:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mDoScrollMove:Z

    :cond_3
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    :cond_4
    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    sget-object v0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->TAG:Ljava/lang/String;

    const-string v1, "end called unregisterSmartMotionScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sput-object v3, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v4}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setWakeLock(Z)V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_6
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;->hide()V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionGuideView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionGuideView;

    :cond_7
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->hide()V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartMotionScrollOverlapView:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;

    :cond_8
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    if-eqz v0, :cond_9

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->mSmartScrollSettings:Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;

    :cond_9
    return-void
.end method
