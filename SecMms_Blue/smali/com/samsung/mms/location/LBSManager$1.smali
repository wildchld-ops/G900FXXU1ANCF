.class Lcom/samsung/mms/location/LBSManager$1;
.super Ljava/lang/Object;
.source "LBSManager.java"

# interfaces
.implements Lcom/nbi/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LBSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LBSManager;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LBSManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public locationUpdated(Lcom/nbi/location/Location;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$000(Lcom/samsung/mms/location/LBSManager;)Lcom/nbi/location/Location;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/mms/location/LocationUtils;->isBetterLocation(Lcom/nbi/location/Location;Lcom/nbi/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #setter for: Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;
    invoke-static {v2, p1}, Lcom/samsung/mms/location/LBSManager;->access$002(Lcom/samsung/mms/location/LBSManager;Lcom/nbi/location/Location;)Lcom/nbi/location/Location;

    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nbi/location/LocationListener;

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$000(Lcom/samsung/mms/location/LBSManager;)Lcom/nbi/location/Location;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nbi/location/LocationListener;->locationUpdated(Lcom/nbi/location/Location;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLocationError(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nbi/location/LocationListener;

    invoke-interface {v1, p1}, Lcom/nbi/location/LocationListener;->onLocationError(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public providerStateChanged(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager$1;->this$0:Lcom/samsung/mms/location/LBSManager;

    #getter for: Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v2}, Lcom/samsung/mms/location/LBSManager;->access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nbi/location/LocationListener;

    invoke-interface {v1, p1}, Lcom/nbi/location/LocationListener;->providerStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
