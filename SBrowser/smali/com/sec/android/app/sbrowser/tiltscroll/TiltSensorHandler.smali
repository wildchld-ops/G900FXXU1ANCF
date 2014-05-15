.class public Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;
.super Ljava/lang/Object;
.source "TiltSensorHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;,
        Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;
    }
.end annotation


# static fields
.field public static TILT_LEVEL_CHANGE_MODE:I

.field public static TILT_LEVEL_VALUE_MODE:I

.field private static volatile sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;


# instance fields
.field private mFirstTiltChangeNotificationPendingX:Z

.field private mFirstTiltChangeNotificationPendingY:Z

.field private mInitialTiltValueX:F

.field private mInitialTiltValueY:F

.field private mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

.field private mSensorAccl:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTiltAxisFlag:I

.field private mTiltLevelX:I

.field private mTiltLevelY:I

.field private mTiltSensingMode:I

.field private mTiltSensorRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->TILT_LEVEL_VALUE_MODE:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->TILT_LEVEL_CHANGE_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, -0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensorRegistered:Z

    sget v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->TILT_LEVEL_CHANGE_MODE:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensingMode:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueX:F

    iput v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueY:F

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingX:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingY:Z

    iput v4, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltAxisFlag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorAccl:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorAccl:Landroid/hardware/Sensor;

    :cond_1
    return-void
.end method

.method private callOnTilt(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensingMode:I

    sget v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->TILT_LEVEL_VALUE_MODE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;->onTilt(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$TiltEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private callOnTiltLevelChanged(III)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensingMode:I

    sget v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->TILT_LEVEL_CHANGE_MODE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;->onTiltLevelChanged(III)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    if-nez v0, :cond_1

    const-class v1, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->sInstance:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetVariables()V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, -0x64

    const/4 v0, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueX:F

    iput v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueY:F

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingX:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingY:Z

    return-void
.end method


# virtual methods
.method public getTiltAxisOfInterest()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltAxisFlag:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltAxisFlag:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v6, v12, v13

    float-to-int v9, v6

    move v8, v9

    if-gez v9, :cond_0

    const/4 v3, 0x0

    mul-int/lit8 v8, v8, -0x1

    :cond_0
    div-int/lit8 v5, v9, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    const/16 v13, -0x64

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueX:F

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltAxisFlag:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v7, v12, v13

    float-to-int v11, v7

    move v10, v11

    if-gez v11, :cond_2

    const/4 v4, 0x0

    mul-int/lit8 v10, v10, -0x1

    :cond_2
    div-int/lit8 v5, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    const/16 v13, -0x64

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueY:F

    :cond_3
    :goto_1
    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-le v8, v10, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_a

    div-int/lit8 v13, v8, 0x2

    const/4 v14, 0x1

    if-eqz v3, :cond_9

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->callOnTiltLevelChanged(III)Z

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingX:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueX:F

    sub-float v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingX:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    if-eq v12, v5, :cond_1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelX:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingY:Z

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mInitialTiltValueY:F

    sub-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mFirstTiltChangeNotificationPendingY:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    if-eq v12, v5, :cond_3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltLevelY:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v12, -0x1

    goto :goto_2

    :cond_a
    div-int/lit8 v13, v10, 0x2

    const/4 v14, 0x2

    if-eqz v4, :cond_b

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->callOnTiltLevelChanged(III)Z

    goto :goto_3

    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_b
    const/4 v12, -0x1

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_e

    :try_start_1
    div-int/lit8 v13, v8, 0x2

    const/4 v14, 0x1

    if-eqz v3, :cond_d

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->callOnTiltLevelChanged(III)Z

    goto :goto_3

    :cond_d
    const/4 v12, -0x1

    goto :goto_5

    :cond_e
    if-eqz v2, :cond_4

    div-int/lit8 v13, v10, 0x2

    const/4 v14, 0x2

    if-eqz v4, :cond_f

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->callOnTiltLevelChanged(III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_f
    const/4 v12, -0x1

    goto :goto_6
.end method

.method public register()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensorRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorAccl:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensorRegistered:Z

    :cond_0
    return-void
.end method

.method public registerTiltListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensingMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->register()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->resetVariables()V

    return-void
.end method

.method public registerTiltListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    iput p2, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensingMode:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltAxisFlag:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->register()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->resetVariables()V

    return-void
.end method

.method public setTiltAxisOfInterest(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltAxisFlag:I

    return-void
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mSensorAccl:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mTiltSensorRegistered:Z

    return-void
.end method

.method public unregisterTiltListener(Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->mOnTiltListener:Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler$OnTiltListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tiltscroll/TiltSensorHandler;->unregister()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
