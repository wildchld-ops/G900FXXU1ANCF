.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


# instance fields
.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WalkStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WalkStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RunStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RunStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UpDownStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UpDownStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TotalStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DistanceDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "StepStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CalorieDiff"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Calorie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "WalkingFrequency"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WalkUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WalkUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WalkDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "WalkDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RunUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RunUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RunDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RunDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LoggingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CalorieDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "WalkStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "RunStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WalkUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "WalkDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "RunUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RunDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TotalStepCountDiffArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xb

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v2, 0xf

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x12

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    :cond_0
    return-void
.end method

.method public parse([BI)I
    .locals 61

    move/from16 v39, p2

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v39

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v23

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    and-int/lit16 v3, v14, 0x80

    if-nez v3, :cond_2

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0xe

    if-gez v3, :cond_1

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    goto :goto_0

    :cond_1
    and-int/lit8 v14, v14, 0x7f

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x0

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v14, p1, v40

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x2

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x3

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x4

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x5

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x6

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x7

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x8

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4059

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x9

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4024

    div-double v34, v55, v57

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xa

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    move/from16 v37, v14

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xb

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xc

    aget-object v55, v23, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v56, p1, v40

    invoke-static/range {v56 .. v56}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v56

    move/from16 v0, v56

    int-to-double v0, v0

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4059

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xd

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xe

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v14, p1, v40

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xf

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x10

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x11

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x12

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v14, p1, v40

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x13

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x14

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x15

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x16

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v39, v40

    :goto_1
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v3, v39

    goto/16 :goto_0

    :cond_2
    and-int/lit16 v3, v14, 0xc0

    shr-int/lit8 v3, v3, 0x6

    const/16 v55, 0x3

    move/from16 v0, v55

    if-ne v3, v0, :cond_7

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_3

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/util/SimpleTimeZone;

    const/16 v55, 0x0

    const-string v56, "GMT"

    move/from16 v0, v55

    move-object/from16 v1, v56

    invoke-direct {v3, v0, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v10

    const/16 v3, 0xb

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v22

    const/16 v3, 0xd

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v33

    const/16 v3, 0xe

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move/from16 v0, v18

    mul-int/lit16 v3, v0, 0xe10

    mul-int/lit8 v55, v22, 0x3c

    add-int v3, v3, v55

    add-int v3, v3, v33

    mul-int/lit16 v3, v3, 0x3e8

    add-int v3, v3, v21

    int-to-long v4, v3

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    add-int/lit8 v39, v40, 0x1

    aget-byte v20, p1, v40

    if-gtz v20, :cond_4

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_4
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x17

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v38, v0

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v17, v0

    move/from16 v0, v20

    new-array v13, v0, [D

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v36, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v51, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v29, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v54, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v48, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v32, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v26, v0

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v43, v0

    const-wide/16 v15, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v24, 0x0

    const/16 v37, -0x1

    const/16 v19, 0x0

    move/from16 v40, v39

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0x14

    if-gez v3, :cond_5

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x10

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v8, v3

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v55

    aput-wide v55, v38, v19

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    int-to-double v0, v14

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4059

    div-double v55, v55, v57

    aput-wide v55, v17, v19

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    int-to-double v0, v14

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4059

    div-double v55, v55, v57

    aput-wide v55, v13, v19

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v51, v19

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v29, v19

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v54, v19

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v48, v19

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v32, v19

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v26, v19

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4024

    div-double v55, v55, v57

    aput-wide v55, v36, v19

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v3, v3, v55

    int-to-long v0, v3

    move-wide/from16 v55, v0

    aput-wide v55, v43, v19

    aget-wide v55, v17, v19

    add-double v15, v15, v55

    aget-wide v55, v13, v19

    add-double v11, v11, v55

    aget-wide v55, v36, v19

    add-double v34, v34, v55

    aget-wide v55, v43, v19

    add-long v41, v41, v55

    aget-wide v55, v51, v19

    add-long v49, v49, v55

    aget-wide v55, v29, v19

    add-long v27, v27, v55

    aget-wide v55, v54, v19

    add-long v52, v52, v55

    aget-wide v55, v48, v19

    add-long v46, v46, v55

    aget-wide v55, v32, v19

    add-long v30, v30, v55

    aget-wide v55, v26, v19

    add-long v24, v24, v55

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    :cond_6
    add-long v55, v52, v46

    add-long v55, v55, v30

    add-long v44, v55, v24

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v55, v0

    div-double v34, v34, v55

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x0

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v49

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v49

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x2

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v27

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v27

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x3

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x4

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v44

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v44

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x5

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x6

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v41

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v41

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x7

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x8

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide v1, v15

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v55, v0

    add-double v55, v55, v15

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x9

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xa

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xb

    aget-object v55, v23, v55

    const/16 v56, -0x1

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xc

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    invoke-virtual {v3, v0, v11, v12}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v55, v0

    add-double v55, v55, v11

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xd

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xe

    aget-object v55, v23, v55

    const-wide/16 v56, 0x0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xf

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v52

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v52

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x10

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x11

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v46

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v46

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x12

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x13

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v30

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v30

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x14

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x15

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v24

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v55, v0

    add-long v55, v55, v24

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x16

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x17

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x18

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x19

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1a

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    invoke-virtual {v3, v0, v13}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1b

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1c

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1d

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1e

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1f

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x20

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x21

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x22

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-object/from16 v1, v43

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    move/from16 v39, v40

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v40

    add-int/lit8 v3, v3, -0x20

    if-gez v3, :cond_8

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v39, -0x1

    move/from16 v3, v39

    move/from16 v39, v40

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x0

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x1

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x2

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x3

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x4

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x5

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x6

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x7

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x8

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4059

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4059

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x9

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v55, v0

    const-wide/high16 v57, 0x4024

    div-double v34, v55, v57

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xa

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move-wide/from16 v1, v34

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v14, p1, v40

    move/from16 v37, v14

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xb

    aget-object v55, v23, v55

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xc

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v55, v0

    int-to-double v0, v14

    move-wide/from16 v57, v0

    const-wide/high16 v59, 0x4024

    div-double v57, v57, v59

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xd

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v14, p1, v39

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xe

    aget-object v55, v23, v55

    int-to-double v0, v14

    move-wide/from16 v56, v0

    const-wide/high16 v58, 0x4024

    div-double v56, v56, v58

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0xf

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x10

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x11

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x12

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v39, v40, 0x1

    aget-byte v3, p1, v40

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x13

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x14

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    add-int/lit8 v40, v39, 0x1

    aget-byte v3, p1, v39

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v39, v40, 0x1

    aget-byte v55, p1, v40

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    shl-int/lit8 v55, v55, 0x8

    add-int v3, v3, v55

    add-int/lit8 v40, v39, 0x1

    aget-byte v55, p1, v39

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0xff

    move/from16 v55, v0

    add-int v14, v3, v55

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x15

    aget-object v55, v23, v55

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v55, v0

    int-to-long v0, v14

    move-wide/from16 v57, v0

    add-long v55, v55, v57

    move-wide/from16 v0, v55

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v55, 0x16

    aget-object v55, v23, v55

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move-wide/from16 v56, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v56

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v39, v40

    goto/16 :goto_1
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    new-array v1, v5, [B

    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    const-string v3, "Height"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    const/16 v3, 0x12

    invoke-virtual {p0, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    const-string v3, "Weight"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    const/16 v3, 0x13

    invoke-virtual {p0, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    const-string v3, "Gender"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserGender(I)V

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivery Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v3, 0x15

    invoke-static {v0, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v2

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
