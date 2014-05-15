.class Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/calllog/CallLogFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive - unlocked, mResetMissedCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$800(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$800(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->updateCoverNotification()V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$900(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$900(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x0

    #setter for: Lcom/android/dialer/calllog/CallLogFragment;->unlockReceiver:Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$902(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;)Lcom/android/dialer/calllog/CallLogFragment$UnlockReceiver;

    :cond_1
    return-void
.end method
