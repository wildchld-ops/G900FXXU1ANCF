.class Lcom/samsung/dialer/util/DirectCallingManager$3$1;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/util/DirectCallingManager$3;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/util/DirectCallingManager$3;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/util/DirectCallingManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager$3$1;->this$1:Lcom/samsung/dialer/util/DirectCallingManager$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$3$1;->this$1:Lcom/samsung/dialer/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/samsung/dialer/util/DirectCallingManager$3;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    iget-boolean v0, v0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$3$1;->this$1:Lcom/samsung/dialer/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/samsung/dialer/util/DirectCallingManager$3;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->registerAccelerometer()V
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1500(Lcom/samsung/dialer/util/DirectCallingManager;)V

    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$202(Z)Z

    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$402(Z)Z

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "mProximityListener, mCheckTwiceEvent is false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$3$1;->this$1:Lcom/samsung/dialer/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/samsung/dialer/util/DirectCallingManager$3;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->unregisterAccelerometer()V
    invoke-static {v0}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1600(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$3$1;->this$1:Lcom/samsung/dialer/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/samsung/dialer/util/DirectCallingManager$3;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const/4 v1, 0x0

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$600(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0
.end method
