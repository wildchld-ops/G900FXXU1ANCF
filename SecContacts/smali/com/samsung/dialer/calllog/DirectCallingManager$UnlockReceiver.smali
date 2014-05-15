.class Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Logs/DirectCallingManager"

    const-string v3, "onReceive - unlocked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mPaused:Z
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$900(Lcom/samsung/dialer/calllog/DirectCallingManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$600(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$700(Lcom/samsung/dialer/calllog/DirectCallingManager;Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1000(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1000(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->getRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1000(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1000(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    invoke-static {v2, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1002(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRegistered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return-void
.end method
