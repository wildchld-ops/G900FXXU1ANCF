.class public Lcom/android/incallui/AnswerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "AnswerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerFragmentManager$1;,
        Lcom/android/incallui/AnswerFragmentManager$AnswerMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/AnswerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/AnswerFragment;

.field private mIsCoverClosed:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v0, p0, Lcom/android/incallui/AnswerFragmentManager;->mIsCoverClosed:Z

    iput v0, p0, Lcom/android/incallui/AnswerFragmentManager;->mOrientation:I

    const-string v0, "AnswerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->INVALID:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

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
.method protected checkAndSet(Z)Lcom/android/incallui/AnswerFragment;
    .locals 11

    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v2

    const-string v9, "vt_cmcc_accept_by_voicecall"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkAndSet: Easy mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/AnswerFragmentManager;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_EASY:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    :goto_1
    iget-boolean v9, p0, Lcom/android/incallui/AnswerFragmentManager;->mIsCoverClosed:Z

    if-eqz v9, :cond_4

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->ANSWER_COVER:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    :cond_4
    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v6

    iget v9, p0, Lcom/android/incallui/AnswerFragmentManager;->mOrientation:I

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v10, :cond_5

    iget v9, p0, Lcom/android/incallui/AnswerFragmentManager;->mOrientation:I

    iget-object v10, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v10

    if-eq v9, v10, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "forceUpdate : mOrientation - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/incallui/AnswerFragmentManager;->mOrientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", config.orientation - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", getProperOrientation - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/AnswerFragmentManager;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mFragmentType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requestedMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", forceUpdate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/AnswerFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_6

    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v9, v7, :cond_7

    :cond_6
    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/incallui/AnswerFragmentManager;->mOrientation:I

    invoke-virtual {p0, v7, p1}, Lcom/android/incallui/AnswerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_7
    iget-object v9, p0, Lcom/android/incallui/AnswerFragmentManager;->currentFragment:Lcom/android/incallui/AnswerFragment;

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_9
    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK_MW:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_a
    if-eqz v5, :cond_b

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_THREE_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_b
    if-eqz v1, :cond_c

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_CMCC_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_c
    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/AnswerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragmentManager;->currentFragment:Lcom/android/incallui/AnswerFragment;

    return-object v0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/AnswerFragmentManager;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/AnswerFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

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

    const-string v0, "[DRIVELINK] onStateChangeAnswerFragment"

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerFragmentManager;->currentFragment:Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerFragmentManager;->setCurrentFragment(Lcom/android/incallui/AnswerFragment;)V

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f08011c

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$1;->$SwitchMap$com$android$incallui$AnswerFragmentManager$AnswerMode:[I

    check-cast p1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    invoke-virtual {p1}, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/android/incallui/AnswerGrowpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerGrowpadFragment;-><init>()V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/AnswerFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/AnswerImageFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerImageFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/AnswerEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/drivelink/AnswerButtonDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/AnswerButtonDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/AnswerVtThreeButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerVtThreeButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/AnswerVtCMCCButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerVtCMCCButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/AnswerCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
