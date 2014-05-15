.class public Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
.super Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const v0, 0x7f06009f

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0600a4

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const v0, 0x7f0600a0

    goto :goto_0

    :cond_4
    const v0, 0x7f0600a3

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const v0, 0x7f06005c

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateSim()V

    goto :goto_0

    :cond_6
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const v0, 0x7f0600a6

    goto :goto_0
.end method

.method reset()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f0600a5

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #getter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x104088a

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    #setter for: Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06009e

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method
