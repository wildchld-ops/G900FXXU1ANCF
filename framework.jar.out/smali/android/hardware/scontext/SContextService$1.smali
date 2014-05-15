.class Landroid/hardware/scontext/SContextService$1;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #calls: Landroid/hardware/scontext/SContextService;->updatePedometerInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v4, p2}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, v4}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x3

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x4

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x5

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x6

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    if-ne p1, v2, :cond_7

    const-string v2, "Temperature"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    const-string v2, "Humidity"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EnvSensorType"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Temperature"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v2, "Humidity"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x8

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x9

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xa

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p1, v2, :cond_a

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xb

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xc

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p1, v2, :cond_c

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xd

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p1, v2, :cond_d

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xe

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p1, v2, :cond_e

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0xf

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_e
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    if-ne p1, v2, :cond_f

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x10

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_f
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    if-ne p1, v2, :cond_10

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x11

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_10
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    if-ne p1, v2, :cond_11

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x12

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_11
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    if-ne p1, v2, :cond_12

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x13

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_12
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    if-ne p1, v2, :cond_13

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x14

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_13
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    if-ne p1, v2, :cond_14

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x15

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_14
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    if-ne p1, v2, :cond_15

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x16

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_15
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    if-ne p1, v2, :cond_16

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x17

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_16
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    if-ne p1, v2, :cond_17

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x18

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_17
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    if-ne p1, v2, :cond_18

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x19

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_18
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    if-ne p1, v2, :cond_19

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1a

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_19
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    if-ne p1, v2, :cond_1a

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1b

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1a
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    if-ne p1, v2, :cond_1b

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1c

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1b
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    if-ne p1, v2, :cond_1c

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1d

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1c
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    if-ne p1, v2, :cond_1d

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1e

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1d
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    if-ne p1, v2, :cond_1e

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x1f

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1e
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    if-ne p1, v2, :cond_1f

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x20

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1f
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    if-ne p1, v2, :cond_20

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x21

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_20
    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SIDE_PRESS_MOTION_SERVICE:I

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v3, 0x22

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v2, v3, p2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
