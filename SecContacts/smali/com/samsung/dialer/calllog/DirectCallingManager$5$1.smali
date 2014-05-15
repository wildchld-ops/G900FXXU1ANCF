.class Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/DirectCallingManager$5;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;->this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;->this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-boolean v0, v0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;->this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->registerAccelerometer()V
    invoke-static {v0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2400(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    invoke-static {v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$202(Z)Z

    sput-boolean v1, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;->this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->isCall()Z
    invoke-static {v0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1500(Lcom/samsung/dialer/calllog/DirectCallingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;->this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->unregisterAccelerometer()V
    invoke-static {v0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2500(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$5$1;->this$1:Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    const/4 v1, 0x0

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1400(Lcom/samsung/dialer/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0
.end method
