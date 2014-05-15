.class Lcom/samsung/mms/location/LocationMapActivity$14;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapCenterAndZoomChange(Lcom/nbi/map/android/MapView;DDDZZ)Z
    .locals 5

    iget-object v1, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->mapGetLocation()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->mapView:Lcom/nbi/map/android/MapView;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$000(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/nbi/map/android/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/android/MapView;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    if-nez p8, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    if-nez p9, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/mms/location/LocationMapActivity;->access$172(Lcom/samsung/mms/location/LocationMapActivity;I)Z

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
