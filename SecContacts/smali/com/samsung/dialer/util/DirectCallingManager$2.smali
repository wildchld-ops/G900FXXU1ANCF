.class Lcom/samsung/dialer/util/DirectCallingManager$2;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/util/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager$2;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isPossibleToCall()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/dialer/util/DirectCallingManager;->access$400()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/dialer/util/DirectCallingManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "onMotionListener() twice"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager$2;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->isCall()Z
    invoke-static {v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$700(Lcom/samsung/dialer/util/DirectCallingManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "onMotionListener() isCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$402(Z)Z

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3

    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionListener() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckTwiceEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/dialer/util/DirectCallingManager;->access$400()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckTryToCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/dialer/util/DirectCallingManager;->access$500()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager$2;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$2;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const/4 v1, 0x0

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$600(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager$2;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$2;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const-string v1, "left"

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$600(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager$2;->isPossibleToCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$2;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const-string v1, "right"

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$600(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
    .end sparse-switch
.end method
