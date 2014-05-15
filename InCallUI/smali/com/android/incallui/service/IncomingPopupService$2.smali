.class Lcom/android/incallui/service/IncomingPopupService$2;
.super Landroid/content/BroadcastReceiver;
.source "IncomingPopupService.java"


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

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive with intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/incallui/service/IncomingPopupService;->access$600(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$500(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v3}, Lcom/android/incallui/service/IncomingPopupService;->stopSelf()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->checkAudioMode()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$700(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :cond_3
    const-string v3, "answer_ringing_call"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->answerThenGoCallScreen()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$100(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0
.end method
