.class Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView$4;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView$4;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iput-boolean p2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->val$success:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PINPUKUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iput-boolean v4, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$700(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f0600a5

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #calls: Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$300(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I
    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;I)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I
    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$600(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x104088a

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v1, v4}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$4$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$4;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    goto/16 :goto_0
.end method
