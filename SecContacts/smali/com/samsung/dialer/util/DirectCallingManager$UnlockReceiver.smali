.class Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/util/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/util/DirectCallingManager;Lcom/samsung/dialer/util/DirectCallingManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "onReceive - unlocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$800(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #calls: Lcom/samsung/dialer/util/DirectCallingManager;->setTextToSpeech()V
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$900(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1000(Lcom/samsung/dialer/util/DirectCallingManager;)Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1100(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1000(Lcom/samsung/dialer/util/DirectCallingManager;)Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1002(Lcom/samsung/dialer/util/DirectCallingManager;Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;)Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    :cond_0
    return-void
.end method
