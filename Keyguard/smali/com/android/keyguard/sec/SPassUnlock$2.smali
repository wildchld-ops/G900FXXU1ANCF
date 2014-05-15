.class Lcom/android/keyguard/sec/SPassUnlock$2;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SPassUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SPassUnlock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(I)V
    .locals 8

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/SPassUnlock;->access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v4, v4, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/SPassUnlock;->access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    const-string v4, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_1

    if-lt v1, v2, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SPassUnlock;->cleanUp()V

    :cond_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #calls: Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V
    invoke-static {v4, v7}, Lcom/android/keyguard/sec/SPassUnlock;->access$200(Lcom/android/keyguard/sec/SPassUnlock;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #setter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z
    invoke-static {v4, v7}, Lcom/android/keyguard/sec/SPassUnlock;->access$302(Lcom/android/keyguard/sec/SPassUnlock;Z)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/SPassUnlock;->access$400(Lcom/android/keyguard/sec/SPassUnlock;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #getter for: Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/SPassUnlock;->access$500(Lcom/android/keyguard/sec/SPassUnlock;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #calls: Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V
    invoke-static {v4}, Lcom/android/keyguard/sec/SPassUnlock;->access$600(Lcom/android/keyguard/sec/SPassUnlock;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock$2;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    #calls: Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V
    invoke-static {v4}, Lcom/android/keyguard/sec/SPassUnlock;->access$700(Lcom/android/keyguard/sec/SPassUnlock;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
