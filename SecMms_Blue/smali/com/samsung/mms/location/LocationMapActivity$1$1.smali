.class Lcom/samsung/mms/location/LocationMapActivity$1$1;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/location/LocationMapActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$1$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$1$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$1;

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$1$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$1;

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v0}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$1$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$1;

    iget-object v1, v1, Lcom/samsung/mms/location/LocationMapActivity$1;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getSelectedPin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/MapView;->selectPin(I)Z

    :cond_0
    return-void
.end method
