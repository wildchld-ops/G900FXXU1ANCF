.class Lcom/android/incallui/service/IncomingPopupService$1;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/IncomingPopupService;
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

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/service/IncomingPopupService;->access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V

    const-string v1, "flash_notification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->stopFlashNotification()V

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->answerThenGoCallScreen()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$100(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->answerCallThenStay()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$200(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->rejectCall()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$300(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->sendMessage()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$400(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$500(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/IncomingPopupService;->stopSelf()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080133 -> :sswitch_4
        0x7f08013e -> :sswitch_0
        0x7f08013f -> :sswitch_1
        0x7f080140 -> :sswitch_2
        0x7f080143 -> :sswitch_3
    .end sparse-switch
.end method
