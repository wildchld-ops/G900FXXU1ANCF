.class Lcom/android/settings/myplace/SelectMapActivity$11;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$2200(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMyLocationOverlay.isMyLocationEnabled() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v6}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v4, v4, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v4, v4, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v5}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v4, v4, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v5, v5, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->setZoom(I)I

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$11;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const-string v5, "here"

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v4, v1, v2, v5}, Lcom/android/settings/myplace/SelectMapActivity;->access$1400(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z

    :cond_1
    return-void
.end method
