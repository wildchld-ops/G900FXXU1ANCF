.class Lcom/nuance/connect/location/SwypeLocationManager$1;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/location/SwypeLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/location/SwypeLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/location/SwypeLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$500(Lcom/nuance/connect/location/SwypeLocationManager;)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #calls: Lcom/nuance/connect/location/SwypeLocationManager;->attemptFetchOnce()V
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$600(Lcom/nuance/connect/location/SwypeLocationManager;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->lastLocationProcessed:J
    invoke-static {v2}, Lcom/nuance/connect/location/SwypeLocationManager;->access$500(Lcom/nuance/connect/location/SwypeLocationManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #calls: Lcom/nuance/connect/location/SwypeLocationManager;->attemptFetchOnce()V
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$600(Lcom/nuance/connect/location/SwypeLocationManager;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$700(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/nuance/connect/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$000(Lcom/nuance/connect/location/SwypeLocationManager;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->attemptOnceGPS:Z
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$800(Lcom/nuance/connect/location/SwypeLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$900(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/nuance/connect/location/SwypeLocationManager;->access$700(Lcom/nuance/connect/location/SwypeLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    #getter for: Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    invoke-static {v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$900(Lcom/nuance/connect/location/SwypeLocationManager;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nuance/connect/location/SwypeLocationManager$1;->this$0:Lcom/nuance/connect/location/SwypeLocationManager;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/connect/location/SwypeLocationManager;->gpsListener:Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;
    invoke-static {v0, v1}, Lcom/nuance/connect/location/SwypeLocationManager;->access$902(Lcom/nuance/connect/location/SwypeLocationManager;Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;)Lcom/nuance/connect/location/SwypeLocationManager$LocationEventListener;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
