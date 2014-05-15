.class public Lcom/android/incallui/EndCallButtonFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "EndCallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/EndCallButtonFragmentManager$1;,
        Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/EndCallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;"
    }
.end annotation


# instance fields
.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field currentFragment:Lcom/android/incallui/EndCallButtonFragment;

.field private mIsCoverClosed:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->ONE_HAND_ENABLED:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mIsCoverClosed:Z

    iput v1, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mOrientation:I

    const-string v0, "EndCallButtonFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonFragmentManager;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->INVALID:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/EndCallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/EndCallButtonFragment;
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCallUiMode: Easy mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", OneHand is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/android/incallui/EndCallButtonFragmentManager;->log(Ljava/lang/String;Z)V

    const-string v6, "support_easy_mode"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->DRIVE_LINK:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->DRIVE_LINK:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    :goto_1
    const-string v6, "QVGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "endcallbutton  qvga"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->END_CALL_QVGA_VIDEO:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    :cond_3
    iget-boolean v6, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mIsCoverClosed:Z

    if-eqz v6, :cond_4

    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->END_CALL_COVER:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v4

    iget v6, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mOrientation:I

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mOrientation:I

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v7

    if-eq v6, v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceUpdate : mOrientation - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", config.orientation - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getProperOrientation - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/android/incallui/EndCallButtonFragmentManager;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFragmentType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestedMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", forceUpdate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/incallui/EndCallButtonFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_6

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v5, :cond_7

    :cond_6
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mOrientation:I

    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/EndCallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_7
    iget-object v6, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->currentFragment:Lcom/android/incallui/EndCallButtonFragment;

    goto/16 :goto_0

    :cond_8
    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->DRIVE_LINK_MW:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    goto/16 :goto_1

    :cond_9
    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->END_CALL_EASY:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_c

    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->DRIVE_LINK:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->DRIVE_LINK:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    goto/16 :goto_1

    :cond_b
    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->DRIVE_LINK_MW:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    goto/16 :goto_1

    :cond_c
    sget-object v5, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->END_CALL_COMMON:Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    goto/16 :goto_1
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonFragmentManager;->getFragment()Lcom/android/incallui/EndCallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/EndCallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->currentFragment:Lcom/android/incallui/EndCallButtonFragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/EndCallButtonFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/EndCallButtonFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/EndCallButtonFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/EndCallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/EndCallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/EndCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/EndCallButtonFragmentManager;->currentFragment:Lcom/android/incallui/EndCallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f080119

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/EndCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$EndCallButtonFragmentManager$EndCallButtonMode:[I

    check-cast p1, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;

    invoke-virtual {p1}, Lcom/android/incallui/EndCallButtonFragmentManager$EndCallButtonMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/EndCallButtonFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/EndCallThreeButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/EndCallThreeButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/drivelink/EndCallButtonDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/EndCallButtonDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/drivelink/EndCallButtonMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/EndCallButtonMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/EndCallButtonCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/EndCallButtonCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/EndCallButtonEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/EndCallButtonEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/EndCallButtonQVGAFragment;

    invoke-direct {v1}, Lcom/android/incallui/EndCallButtonQVGAFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
