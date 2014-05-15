.class Lcom/android/keyguard/KeyguardFaceUnlockView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$700(Lcom/android/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$800(Lcom/android/keyguard/KeyguardFaceUnlockView;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #setter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$802(Lcom/android/keyguard/KeyguardFaceUnlockView;Z)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$900(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #calls: Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$600(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$600(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #calls: Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    #getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    return-void
.end method
