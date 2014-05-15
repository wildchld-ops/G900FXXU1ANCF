.class Lcom/android/incallui/service/OverlayPopupService$1;
.super Landroid/os/Handler;
.source "OverlayPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/OverlayPopupService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/OverlayPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/OverlayPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

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

    #calls: Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/incallui/service/OverlayPopupService;->access$000(Lcom/android/incallui/service/OverlayPopupService;Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    #getter for: Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->access$100(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    #getter for: Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->access$100(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/OverlayPopupService;->showCallEndBlink()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
