.class Lcom/android/keyguard/KeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "seq"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDelayedShowingSequence = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v7, 0x1

    #setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    #setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v7, 0x1

    #setter for: Lcom/android/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$1002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V

    :cond_1
    :goto_0
    monitor-exit v6

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v7}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "KeyguardViewMediator"

    const-string v6, "FMM_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V

    :goto_2
    const-string v5, "KeyguardViewMediator"

    const-string v6, "wakeUp device!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "KeyguardViewMediator"

    const-string v7, "received intent to unlock FMM unlockscreen!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    :goto_3
    const-string v5, "KeyguardViewMediator"

    const-string v6, "wakeUp device!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_9
    const-string v6, "com.sec.android.Keyguard.SIDE_TOUCH_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "KeyguardViewMediator"

    const-string v7, "received intent to unlock SIDE_UNLOCK unlockscreen!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    :cond_a
    const-string v6, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v5, "KeyguardViewMediator"

    const-string v6, "CARRIER_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_c
    const-string v6, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "KeyguardViewMediator"

    const-string v7, "received intent to unlock FLP!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_e
    const-string v6, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v5, "KeyguardViewMediator"

    const-string v6, "CARRIER_FLPP_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    :cond_f
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_10
    const-string v6, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "KeyguardViewMediator"

    const-string v7, "CARRIER_FLPP_UNLOCKED_ACTION intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSKTPassword(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_12
    const-string v6, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "KeyguardViewMediator"

    const-string v7, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    :cond_13
    const-string v6, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    :cond_14
    const-string v6, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v5}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    :cond_15
    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v5, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_17

    if-eqz v1, :cond_17

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_16
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_ACL_DISCONNECTED : mWearabledevice =/= device !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_ACL_DISCONNECTED : mWearabledevice or device is null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_18
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v5, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #setter for: Lcom/android/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_1

    :cond_19
    const-string v6, "com.samsung.pen.INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string v6, "penInsert"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " penInsert = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    move v2, v5

    :cond_1b
    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v6, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    :cond_1c
    const-string v5, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "KeyguardViewMediator"

    const-string v6, "EmergencyMode intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_1d
    const-string v5, "KeyguardViewMediator"

    const-string v6, "wakeUp device!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    :cond_1e
    const-string v5, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-string v5, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1f
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    goto/16 :goto_1
.end method
