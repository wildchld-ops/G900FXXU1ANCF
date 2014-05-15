.class Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;
.super Landroid/os/Handler;
.source "USBATComandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;->this$0:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;->this$0:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->access$000(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;->this$0:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->access$100(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;->this$0:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->access$000(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "response"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "USBATComandReceiver"

    const-string v1, "result is sent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver$PrivateHandler;->this$0:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->access$100(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
