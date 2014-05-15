.class Lorg/chromium/content/browser/DeviceMotionAndOrientation;
.super Ljava/lang/Object;
.source "DeviceMotionAndOrientation.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxyImpl;,
        Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final DEVICE_MOTION:I = 0x1

.field static final DEVICE_MOTION_SENSORS:Lcom/google/common/collect/ImmutableSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION:I = 0x0

.field static final DEVICE_ORIENTATION_SENSORS:Lcom/google/common/collect/ImmutableSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceMotionAndOrientation"

.field private static sSingleton:Lorg/chromium/content/browser/DeviceMotionAndOrientation;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field private mAccelerationVector:[F

.field final mActiveSensors:Ljava/util/Set;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceMotionIsActive:Z

.field mDeviceOrientationIsActive:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mMagneticFieldVector:[F

.field private mNativePtr:I

.field private mNativePtrLock:Ljava/lang/Object;

.field private mSensorManagerProxy:Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->sSingletonLock:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->DEVICE_ORIENTATION_SENSORS:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->DEVICE_MOTION_SENSORS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mHandlerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceMotionIsActive:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceOrientationIsActive:Z

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceMotionAndOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance()Lorg/chromium/content/browser/DeviceMotionAndOrientation;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v1, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->sSingleton:Lorg/chromium/content/browser/DeviceMotionAndOrientation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;

    invoke-direct {v0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->sSingleton:Lorg/chromium/content/browser/DeviceMotionAndOrientation;

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->sSingleton:Lorg/chromium/content/browser/DeviceMotionAndOrientation;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrientationUsingGetRotationMatrix()V
    .locals 13

    const-wide v11, 0x4076800000000000L

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mMagneticFieldVector:[F

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    new-array v7, v0, [F

    const/4 v0, 0x0

    iget-object v9, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    iget-object v10, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mMagneticFieldVector:[F

    invoke-static {v7, v0, v9, v10}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v8, v0, [F

    invoke-static {v7, v8}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x0

    aget v0, v8, v0

    neg-float v0, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    :goto_1
    const-wide/16 v9, 0x0

    cmpg-double v0, v1, v9

    if-gez v0, :cond_2

    add-double/2addr v1, v11

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    aget v0, v8, v0

    neg-float v0, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    :goto_2
    const-wide v9, -0x3f99800000000000L

    cmpg-double v0, v3, v9

    if-gez v0, :cond_3

    add-double/2addr v3, v11

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    :goto_3
    const-wide v9, -0x3fa9800000000000L

    cmpg-double v0, v5, v9

    if-gez v0, :cond_4

    add-double/2addr v5, v11

    goto :goto_3

    :cond_4
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getSensorManagerProxy()Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "sensor"

    invoke-static {v1}, Lorg/chromium/base/WeakContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    goto :goto_0
.end method

.method private native nativeGotAcceleration(IDDD)V
.end method

.method private native nativeGotAccelerationIncludingGravity(IDDD)V
.end method

.method private native nativeGotOrientation(IDDD)V
.end method

.method private native nativeGotRotationRate(IDDD)V
.end method

.method private registerForSensorType(II)Z
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    mul-int/lit16 v0, p2, 0x3e8

    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, p0, p1, v0, v2}, Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v2

    goto :goto_0
.end method

.method private registerSensors(Ljava/lang/Iterable;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v5, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->registerForSensorType(II)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    invoke-direct {p0, v3}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->unregisterSensors(Ljava/lang/Iterable;)V

    const/4 v4, 0x0

    :cond_1
    return v4

    :cond_2
    if-eqz v1, :cond_0

    iget-object v5, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setEventTypeActive(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceOrientationIsActive:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceMotionIsActive:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected gotAcceleration(DDD)V
    .locals 9

    iget-object v8, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->nativeGotAcceleration(IDDD)V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotAccelerationIncludingGravity(DDD)V
    .locals 9

    iget-object v8, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->nativeGotAccelerationIncludingGravity(IDDD)V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientation(DDD)V
    .locals 9

    iget-object v8, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->nativeGotOrientation(IDDD)V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotRotationRate(DDD)V
    .locals 9

    iget-object v8, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->nativeGotRotationRate(IDDD)V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->sensorChanged(I[F)V

    return-void
.end method

.method sensorChanged(I[F)V
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    if-nez v0, :cond_1

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    aget v0, v0, v2

    float-to-double v1, v0

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    aget v0, v0, v3

    float-to-double v3, v0

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mAccelerationVector:[F

    aget v0, v0, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->gotAccelerationIncludingGravity(DDD)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->getOrientationUsingGetRotationMatrix()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_2

    aget v0, p2, v2

    float-to-double v1, v0

    aget v0, p2, v3

    float-to-double v3, v0

    aget v0, p2, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->gotAcceleration(DDD)V

    goto :goto_1

    :sswitch_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_2

    aget v0, p2, v2

    float-to-double v1, v0

    aget v0, p2, v3

    float-to-double v3, v0

    aget v0, p2, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->gotRotationRate(DDD)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mMagneticFieldVector:[F

    if-nez v0, :cond_3

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mMagneticFieldVector:[F

    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mMagneticFieldVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mMagneticFieldVector:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method setSensorManagerProxy(Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceMotionAndOrientation$SensorManagerProxy;

    return-void
.end method

.method public start(III)Z
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v2

    packed-switch p2, :pswitch_data_0

    :try_start_0
    const-string v3, "DeviceMotionAndOrientation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return v1

    :pswitch_0
    sget-object v1, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->DEVICE_ORIENTATION_SENSORS:Lcom/google/common/collect/ImmutableSet;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p3, v3}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->registerSensors(Ljava/lang/Iterable;IZ)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    iput p1, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->setEventTypeActive(IZ)V

    :cond_0
    monitor-exit v2

    move v1, v0

    goto :goto_0

    :pswitch_1
    sget-object v1, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->DEVICE_MOTION_SENSORS:Lcom/google/common/collect/ImmutableSet;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, v3}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->registerSensors(Ljava/lang/Iterable;IZ)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop(I)V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v3

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v2, "DeviceMotionAndOrientation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->DEVICE_MOTION_SENSORS:Lcom/google/common/collect/ImmutableSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->unregisterSensors(Ljava/lang/Iterable;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->setEventTypeActive(IZ)V

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mNativePtr:I

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_1
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/chromium/content/browser/DeviceMotionAndOrientation;->DEVICE_ORIENTATION_SENSORS:Lcom/google/common/collect/ImmutableSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
