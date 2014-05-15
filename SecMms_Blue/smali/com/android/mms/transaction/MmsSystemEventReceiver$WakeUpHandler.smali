.class public Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;
.super Landroid/os/Handler;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeUpHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSystemEventReceiver] what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "Mms:transaction"

    const-string v5, "[MmsSystemEventReceiver] EVENT_WAKE_UP_SERVICE"

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] context null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$102(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$100()Landroid/net/ConnectivityManager;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$202(I)I

    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$300(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$200()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_3

    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] cannot use mobile_mms"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$402(Z)Z

    goto :goto_0

    :cond_3
    const-string v2, "Mms:transaction"

    const-string v4, "[MmsSystemEventReceiver] mobile_mms is not available"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$208()I

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
