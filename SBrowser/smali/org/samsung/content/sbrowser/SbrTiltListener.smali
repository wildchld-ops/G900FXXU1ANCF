.class public Lorg/samsung/content/sbrowser/SbrTiltListener;
.super Ljava/lang/Object;
.source "SbrTiltListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiltListener"

.field private static final TILT_ZOOM_SCALE_FACTOR:I = 0x118

.field private static final TILT_ZOOM_TIMEOUT:I = 0x1e

.field private static mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mCurrTilt:I

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMotionUse:Z

.field mOnScaleBeginTime:J

.field private mRegisteredMotionListener:Z

.field mTiltBeginTime:J

.field private mTiltIntended:Z

.field private mTiltUse:Z

.field private motionListener:Landroid/hardware/motion/MRListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mCurrTilt:I

    iput-wide v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mOnScaleBeginTime:J

    iput-wide v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltBeginTime:J

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltUse:Z

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltIntended:Z

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mRegisteredMotionListener:Z

    new-instance v0, Lorg/samsung/content/sbrowser/SbrTiltListener$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrTiltListener$1;-><init>(Lorg/samsung/content/sbrowser/SbrTiltListener;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->motionListener:Landroid/hardware/motion/MRListener;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iput-object p3, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    sget-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SbrTiltListener;Landroid/hardware/motion/MREvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrTiltListener;->onMREvent(Landroid/hardware/motion/MREvent;)V

    return-void
.end method

.method private getMotionUse()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionUse:Z

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionUse:Z

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mCurrTilt:I

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->tiltUseDecision()V

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    :cond_0
    return-void
.end method

.method private setCurrTilt(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mCurrTilt:I

    return-void
.end method

.method private tiltUseDecision()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltUse:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltIntended:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltBeginTime:J

    iput-boolean v6, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltIntended:Z

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltBeginTime:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v6}, Lorg/samsung/content/sbrowser/SbrTiltListener;->setTiltUse(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltBeginTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltIntended:Z

    goto :goto_0
.end method


# virtual methods
.method public ProcessTiltHandle(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->motionEventRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->initiateTiltZoom()V

    :cond_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->motionEventRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->endTiltZoom()V

    :cond_2
    return-void
.end method

.method public endTiltZoom()V
    .locals 2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->unregisterTiltListener()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->setTiltUse(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method

.method public getCurrTilt()I
    .locals 2

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mCurrTilt:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mCurrTilt:I

    return v0
.end method

.method public getTiltUse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltUse:Z

    return v0
.end method

.method public handleTiltZoomScale(F)F
    .locals 5

    move v0, p1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->getTiltUse()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->getCurrTilt()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x438c

    div-float/2addr v1, v2

    add-float v0, v1, p1

    const/high16 v1, 0x3f80

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f7cac083126e979L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const-string v1, "TiltListener"

    const-string v2, "setTiltUse(false)"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/samsung/content/sbrowser/SbrTiltListener;->setTiltUse(Z)V

    :cond_0
    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    move v0, p1

    :cond_1
    return v0
.end method

.method public initiateTiltZoom()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/samsung/content/sbrowser/SbrTiltListener;->setTiltStartTime(J)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->registerTiltListener()V

    return-void
.end method

.method public motionEventRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mRegisteredMotionListener:Z

    return v0
.end method

.method public registerTiltListener()V
    .locals 3

    sget-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->motionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mRegisteredMotionListener:Z

    :cond_0
    return-void
.end method

.method public setTiltStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mOnScaleBeginTime:J

    return-void
.end method

.method public setTiltUse(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrTiltListener;->setCurrTilt(I)V

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltUse:Z

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mTiltIntended:Z

    return-void
.end method

.method public unregisterTiltListener()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->motionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/SbrTiltListener;->setTiltUse(Z)V

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/SbrTiltListener;->mRegisteredMotionListener:Z

    :cond_0
    return-void
.end method
