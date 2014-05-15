.class Lcom/android/incallui/service/IncomingPopupService$4;
.super Landroid/os/Handler;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/IncomingPopupService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/IncomingPopupService;->access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const/4 v1, 0x0

    #setter for: Lcom/android/incallui/service/IncomingPopupService;->showingRejectMessage:Z
    invoke-static {v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->access$902(Lcom/android/incallui/service/IncomingPopupService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const/4 v1, 0x0

    #setter for: Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;
    invoke-static {v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->access$1002(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/IncomingPopupService;->stopSelf()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$500(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/IncomingPopupService;->stopSelf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
