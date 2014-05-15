.class Lcom/samsung/dialer/util/DirectCallingManager$1;
.super Landroid/os/Handler;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/util/DirectCallingManager;
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

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const/4 v2, 0x0

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$000(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/util/DirectCallingManager;->AnalizeRecorgnitionResult(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v4}, Lcom/samsung/dialer/util/DirectCallingManager;->access$100(Lcom/samsung/dialer/util/DirectCallingManager;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/util/DirectCallingManager;->AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v4}, Lcom/samsung/dialer/util/DirectCallingManager;->access$100(Lcom/samsung/dialer/util/DirectCallingManager;Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recognition_error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/dialer/util/DirectCallingManager;->onResultErrorCode(I)V

    goto :goto_0

    :sswitch_4
    invoke-static {v5}, Lcom/samsung/dialer/util/DirectCallingManager;->access$202(Z)Z

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v5}, Lcom/samsung/dialer/util/DirectCallingManager;->access$300(Lcom/samsung/dialer/util/DirectCallingManager;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
        0x60 -> :sswitch_4
    .end sparse-switch
.end method
