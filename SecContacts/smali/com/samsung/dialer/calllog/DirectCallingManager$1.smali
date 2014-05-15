.class Lcom/samsung/dialer/calllog/DirectCallingManager$1;
.super Landroid/os/Handler;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    const/4 v2, 0x0

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->tryToCall(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$000(Lcom/samsung/dialer/calllog/DirectCallingManager;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->AnalizeRecorgnitionResult(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$100(Lcom/samsung/dialer/calllog/DirectCallingManager;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v1, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$100(Lcom/samsung/dialer/calllog/DirectCallingManager;Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recognition_error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->onResultErrorCode(I)V

    goto :goto_0

    :sswitch_4
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$202(Z)Z

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$300(Lcom/samsung/dialer/calllog/DirectCallingManager;I)V

    goto :goto_0

    :sswitch_5
    invoke-static {v3}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$202(Z)Z

    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->updateProximitySensorMode(I)V
    invoke-static {v1, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$300(Lcom/samsung/dialer/calllog/DirectCallingManager;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
        0x60 -> :sswitch_4
        0x70 -> :sswitch_5
    .end sparse-switch
.end method
