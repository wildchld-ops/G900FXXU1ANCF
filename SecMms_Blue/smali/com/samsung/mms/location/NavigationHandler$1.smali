.class Lcom/samsung/mms/location/NavigationHandler$1;
.super Ljava/lang/Object;
.source "NavigationHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/NavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/NavigationHandler;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/NavigationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/NavigationHandler$1;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "Zoom"

    const-string v1, "Zoom Out Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler$1;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;
    invoke-static {v0}, Lcom/samsung/mms/location/NavigationHandler;->access$000(Lcom/samsung/mms/location/NavigationHandler;)Lcom/samsung/mms/location/LocationMapActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler$1;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMainActivity:Lcom/samsung/mms/location/LocationMapActivity;
    invoke-static {v0}, Lcom/samsung/mms/location/NavigationHandler;->access$000(Lcom/samsung/mms/location/NavigationHandler;)Lcom/samsung/mms/location/LocationMapActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/mms/location/LocationMapActivity;->showNoInternetDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/NavigationHandler$1;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    iget-object v1, p0, Lcom/samsung/mms/location/NavigationHandler$1;->this$0:Lcom/samsung/mms/location/NavigationHandler;

    #getter for: Lcom/samsung/mms/location/NavigationHandler;->mMapView:Lcom/nbi/map/android/MapView;
    invoke-static {v1}, Lcom/samsung/mms/location/NavigationHandler;->access$100(Lcom/samsung/mms/location/NavigationHandler;)Lcom/nbi/map/android/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/android/MapView;->getZoomLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #calls: Lcom/samsung/mms/location/NavigationHandler;->performMapZoom(I)V
    invoke-static {v0, v1}, Lcom/samsung/mms/location/NavigationHandler;->access$200(Lcom/samsung/mms/location/NavigationHandler;I)V

    goto :goto_0
.end method
