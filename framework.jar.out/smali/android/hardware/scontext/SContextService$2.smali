.class Landroid/hardware/scontext/SContextService$2;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


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

    iput-object p1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 8

    const/4 v4, 0x3

    const/high16 v7, 0x43b4

    const/4 v6, 0x0

    const/16 v0, 0x50

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;)I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    sub-float v2, v3, v4

    cmpg-float v3, v2, v6

    if-gez v3, :cond_0

    add-float/2addr v2, v7

    :cond_0
    const/high16 v3, 0x4334

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    sub-float v2, v7, v2

    :cond_1
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_2

    int-to-float v3, v0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    const-string v3, "SContextService"

    const-string v4, "onGetSensorHubData() : AirMotion : The difference of exit and enter angle is below threshold!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Version"

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mAirMotionFeatureLevel:I
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "Values"

    iget-object v4, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v4, 0x7

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    invoke-static {v3, v4, v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V

    goto :goto_0
.end method
