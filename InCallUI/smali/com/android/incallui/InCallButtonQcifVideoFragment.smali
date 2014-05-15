.class public Lcom/android/incallui/InCallButtonQcifVideoFragment;
.super Lcom/android/incallui/CallButtonFragment;
.source "InCallButtonQcifVideoFragment.java"

# interfaces
.implements Lcom/android/incallui/vt/VTStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;,
        Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;
    }
.end annotation


# instance fields
.field private final HIDE_INCALL_BUTTONS:I

.field private final HIDE_INCALL_BUTTONS_DELAY:I

.field private mAllHiddenButtonContainer:Landroid/view/View;

.field private mButtonContainer:Landroid/view/View;

.field private mDecorationButton:Landroid/widget/ImageButton;

.field private mFrameState:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

.field private mHandler:Landroid/os/Handler;

.field private mHideShowToggleButton:Landroid/widget/ToggleButton;

.field private mInVTCallMenu:Lcom/android/incallui/InCallMenu;

.field private mMuteToggleButton:Landroid/widget/ToggleButton;

.field private mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

.field private mStopRecordingButton:Landroid/widget/Button;

.field private mSwitchCameraButton:Landroid/widget/Button;

.field private mSwitchVCButton:Landroid/widget/ImageButton;

.field private mSwitchVTButton:Landroid/widget/ImageButton;

.field private mVCButtonEnable:Z

.field private mVTButtonEnable:Z

.field private mVTSeekBar:Lcom/android/incallui/vt/VTSeekBar;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput-boolean v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVCButtonEnable:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTButtonEnable:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->HIDE_INCALL_BUTTONS:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->HIDE_INCALL_BUTTONS_DELAY:I

    new-instance v0, Lcom/android/incallui/InCallButtonQcifVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment$1;-><init>(Lcom/android/incallui/InCallButtonQcifVideoFragment;)V

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;->SHOW:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mFrameState:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallButtonQcifVideoFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->isPossibleToHideButton()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallButtonQcifVideoFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private isPossibleToHideButton()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    move v2, v1

    :goto_0
    return v2

    :cond_3
    const-string v2, "isPossibleToHideButton : Activity is null!"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showButtonContainer(Z)V
    .locals 5

    const/4 v3, 0x4

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveDownToHide(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveUpToShow(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryVisible(Z)V

    :cond_0
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVCButtonEnable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTButtonEnable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveDownToHide(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/incallui/AnimationUtils$Move;->moveUpToShow(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryVisible(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-static {v1, v3}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    invoke-static {v1, v3}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    invoke-static {v1, v3}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showOutgoingButtons(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->setHideShowButton(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAnimation(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private toggleHideShow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleHideShow isShowMe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "camera is not allowed, return"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f070137

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->setHideShowButton(Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->sendStillImage()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->sendLiveVideo()V

    goto :goto_0
.end method

.method private updateButtonState(I)V
    .locals 1

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showOutgoingButtons(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public displayDialpad(Z)V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showButtonContainer(Z)V

    :cond_1
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showButtonContainer(Z)V

    :cond_1
    return-void
.end method

.method public enableSwitchButton(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    instance-of v2, v2, Lcom/android/incallui/vt/InCSVTCallMenu;

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lcom/android/incallui/vt/InCSVTCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/InCSVTCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    instance-of v2, v2, Lcom/android/incallui/vt/InPSVTCallMenu;

    if-nez v2, :cond_2

    :cond_5
    new-instance v2, Lcom/android/incallui/vt/InPSVTCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/incallui/vt/InPSVTCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mInVTCallMenu:Lcom/android/incallui/InCallMenu;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCameraEvent(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->enableSwitchButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->handleCameraStartFailed()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->enableSwitchButton(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mFrameState:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    sget-object v1, Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;->HIDE:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getNearEndAnimationImageView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->startAnimation(Landroid/view/View;Z)V

    sget-object v0, Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;->SHOW:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mFrameState:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->enableSwitchButton(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCaptureAndRecordEvent(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingFarEndView(Z)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingNearEndView(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCastingEvent(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onClick(Landroid/view/View;)V

    const-string v1, "onClick: call super onClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->enableSwitchButton(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getNearEndAnimationImageView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->startAnimation(Landroid/view/View;Z)V

    sget-object v1, Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;->HIDE:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    iput-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mFrameState:Lcom/android/incallui/InCallButtonQcifVideoFragment$FrameState;

    new-instance v1, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;-><init>(Lcom/android/incallui/InCallButtonQcifVideoFragment;Lcom/android/incallui/InCallButtonQcifVideoFragment$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleHideShow()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->stopRecording()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showFarEndRecordingInfo(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndRecordingInfo(Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleButtonContainer()V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationMainPanel()V

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationInfoToast()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleButtonContainer()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v4}, Lcom/android/incallui/CallButtonPresenter;->requestModifyCall(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800d4 -> :sswitch_5
        0x7f080107 -> :sswitch_3
        0x7f08010a -> :sswitch_0
        0x7f08010b -> :sswitch_2
        0x7f08010c -> :sswitch_1
        0x7f08010e -> :sswitch_4
        0x7f08010f -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/incallui/vt/VideoCallManager;->removeListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onDestroyView()V

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onFinishInflate(Landroid/view/View;)V

    const v2, 0x7f0800d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v2, 0x7f080109

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    const v2, 0x7f08010d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mAllHiddenButtonContainer:Landroid/view/View;

    const v2, 0x7f08010a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08010b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mStopRecordingButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08010c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080023

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x7f080107

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mDecorationButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08010e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08010f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080108

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/vt/PreviewEffectUI;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    const-string v2, "vt_cmcc_adjust_camera_contrast_brightness"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/incallui/vt/VTSeekBar;

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/incallui/vt/VTSeekBar;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTSeekBar:Lcom/android/incallui/vt/VTSeekBar;

    :cond_1
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/android/incallui/vt/VideoCallManager;->addListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_2
    return-void
.end method

.method public onOpenCloseDialpad(Z)V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onOpenCloseDialpad(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showButtonContainer(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onResume()V

    return-void
.end method

.method public onVideoCallEvent(I)V
    .locals 0

    return-void
.end method

.method public onVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 0

    return-void
.end method

.method public sendLiveVideo()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    return-void
.end method

.method public sendStillImage()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleButtonContainer()V

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->updateButtonState(I)V

    return-void
.end method

.method public setHideShowButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHideShowToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setVisibleByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showMute(Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showDialPadButton(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setVisibleCameraPreview(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showDecorationButton(Z)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mDecorationButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDialPadButton(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-ne p1, v4, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez p1, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v1, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setVisibleCameraPreview(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez p1, :cond_3

    :goto_2
    invoke-interface {v1, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2
.end method

.method public showGroupCall(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVCButtonEnable:Z

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVCButtonEnable:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVCButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showModifyCall(Z)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showModifyCall show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTButtonEnable:Z

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "video_call_downgrade_qcif"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTButtonEnable:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchVTButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMute(Z)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSeekBar(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTSeekBar:Lcom/android/incallui/vt/VTSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mVTSeekBar:Lcom/android/incallui/vt/VTSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VTSeekBar;->showSeekBar(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "showVTSeekBar: mVTSeekBar is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showStopButton(Z)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mStopRecordingButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mStopRecordingButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwitchButton(Z)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected toggleButtonContainer()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->isPossibleToHideButton()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showButtonContainer(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showButtonContainer(Z)V

    goto :goto_0
.end method
