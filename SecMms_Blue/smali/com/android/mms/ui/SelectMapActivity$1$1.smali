.class Lcom/android/mms/ui/SelectMapActivity$1$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectMapActivity$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #calls: Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$102(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$100(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start update location"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v2, v2, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$100(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$402(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SelectMapActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$600(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "search point is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #calls: Lcom/android/mms/ui/SelectMapActivity;->getLocationServiceAvailable()Z
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$700(Lcom/android/mms/ui/SelectMapActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$1$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$1;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SelectMapActivity$1$1$1;-><init>(Lcom/android/mms/ui/SelectMapActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
