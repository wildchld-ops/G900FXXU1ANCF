.class Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/IncomingPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/IncomingPopupService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v1, "AutoAnsTimer onFinish "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->answeringMode()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    #calls: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$500(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/IncomingPopupService;->stopSelf()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
