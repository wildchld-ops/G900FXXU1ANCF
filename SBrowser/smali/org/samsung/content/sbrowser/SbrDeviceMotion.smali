.class Lorg/samsung/content/sbrowser/SbrDeviceMotion;
.super Ljava/lang/Object;
.source "SbrDeviceMotion.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "device_motion"
.end annotation


# static fields
.field private static final INTERVAL_MILLIS:I = 0x64


# instance fields
.field private mGravityVector:[F

.field private mHandler:Landroid/os/Handler;

.field private mMagneticFieldVector:[F

.field private mNativePtr:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SbrDeviceMotion;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private static create()Lorg/samsung/content/sbrowser/SbrDeviceMotion;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;-><init>()V

    return-object v0
.end method

.method private declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/samsung/content/sbrowser/SbrDeviceMotion$1;

    invoke-direct {v2, p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion$1;-><init>(Lorg/samsung/content/sbrowser/SbrDeviceMotion;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mThread:Ljava/lang/Thread;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mSensorManager:Landroid/hardware/SensorManager;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sensor"

    invoke-static {v0}, Lorg/chromium/base/WeakContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mSensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method private native nativeGotDeviceMotion(IZDZDZDD)V
.end method

.method private declared-synchronized setHandler(Landroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized maybeGotDeviceMotion(DDDD)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mNativePtr:I

    const-wide/16 v2, 0x0

    cmpl-double v0, p1, v2

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmpl-double v0, p3, v3

    if-nez v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    const-wide/16 v3, 0x0

    cmpl-double v0, p3, v3

    if-nez v0, :cond_3

    const/4 v8, 0x0

    :goto_2
    move-object v0, p0

    move-wide v3, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v0 .. v12}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->nativeGotDeviceMotion(IZDZDZDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    aget v0, v0, v2

    float-to-double v1, v0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    aget v0, v0, v3

    float-to-double v3, v0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mGravityVector:[F

    aget v0, v0, v5

    float-to-double v5, v0

    const-wide/high16 v7, 0x4059

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->maybeGotDeviceMotion(DDDD)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method registerForSensorType(II)Z
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    mul-int/lit16 v0, p2, 0x3e8

    div-int/lit8 v1, v0, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v4

    goto :goto_0
.end method

.method registerForSensors(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->registerForSensorType(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->registerForSensorType(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->unregisterForSensors()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized start(II)Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->stop()V

    invoke-virtual {p0, p2}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->registerForSensors(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mNativePtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mNativePtr:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->mNativePtr:I

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->unregisterForSensors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unregisterForSensors()V
    .locals 1

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrDeviceMotion;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
