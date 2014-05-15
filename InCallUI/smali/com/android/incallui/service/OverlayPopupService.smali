.class public Lcom/android/incallui/service/OverlayPopupService;
.super Lcom/android/incallui/service/MiniModeCallService;
.source "OverlayPopupService.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# instance fields
.field private mCallEndBlinkCnt:I

.field private mCallIconView:Landroid/widget/ImageView;

.field private mCallStatusText:Landroid/widget/TextView;

.field private mCallTimeContainer:Landroid/view/View;

.field private mCallTimeText:Landroid/widget/Chronometer;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mDeletePopup:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mOverlayCall:Landroid/widget/RelativeLayout;

.field private mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

.field private mRecordIconView:Landroid/widget/ImageView;

.field private mRecordTimeContainer:Landroid/view/View;

.field private mRecordTimeText:Landroid/widget/Chronometer;

.field private mShowingCallEndBlink:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    iput-boolean v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mShowingCallEndBlink:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/OverlayPopupService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 3

    const/16 v2, 0x65

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_3
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private getPhotoDrawable(Lcom/android/services/telephony/common/Call;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private goInCallScreen()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    const-string v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/incallui/service/OverlayPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->checkDrivelink()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/OverlayPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "OverlayPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private setCallPhoto()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/OverlayPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "OverlayPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConference(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "OverlayPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGenericConference(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    const-string v3, "OverlayPopupService"

    const-string v4, "mImageView is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "usa_cdma_concept"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f020134

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/service/OverlayPopupService;->getPhotoDrawable(Lcom/android/services/telephony/common/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f020133

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 14

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v9

    const-wide/high16 v5, -0x8000

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v10

    :cond_0
    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    invoke-virtual {v9}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v5

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v2, v11, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v0, v11, v2

    const-wide/16 v11, -0x1

    cmp-long v11, v5, v11

    if-lez v11, :cond_2

    iget-object v11, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v11, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v11, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v11, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v11, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v11}, Landroid/widget/Chronometer;->start()V

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/incallui/service/OverlayPopupService;->checkCallStatus(I)V

    return-void

    :cond_1
    const-wide/16 v5, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v11

    if-nez v11, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->stopSelf()V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-lez v11, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v0, v11, v7

    iget-object v11, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v11, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    :goto_2
    iget-object v11, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v11, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_2
.end method

.method private setCallTypeImage()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private setRecordTime()V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v6

    const-wide/16 v4, -0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v1

    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/incallui/service/OverlayPopupService;->checkCallStatus(I)V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/incallui/service/OverlayPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGreenBar()V
    .locals 4

    const-string v0, "feature_skt_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OverlayPopupService"

    const-string v1, "call statusBar.showCallView()!"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public checkCallStatus(I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f02017a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f02018d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hidePopup()V
    .locals 2

    const-string v0, "OverlayPopupService"

    const-string v1, "hidePopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v1, "OverlayPopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040047

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f080159

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f080160

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f080161

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setRecordTime()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallTime()V

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto()V

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallTypeImage()V

    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 14

    const-wide/32 v12, 0x36ee80

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v7, v2, v0

    cmp-long v9, v7, v12

    if-ltz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v9, "voice_call_recording"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v4

    cmp-long v9, v4, v12

    if-ltz v9, :cond_2

    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0, v7, v8}, Lcom/android/incallui/service/OverlayPopupService;->setTTS(J)V

    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x1

    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->setOverlayPopup(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/OverlayPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v1, Lcom/android/incallui/service/OverlayPopupService$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/OverlayPopupService$1;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->showGreenBar()V

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_overlay_popup_preference"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incall overlay setting:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/16 v3, 0x65

    const/16 v2, 0x64

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setOverlayPopup(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    :cond_4
    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    return-void
.end method

.method protected onLongTouchEvent()V
    .locals 7

    const v2, 0x7f070029

    const v1, 0x7f07002a

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f07015e

    const v1, 0x7f07015f

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const v6, 0x7f0e004d

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/incallui/service/OverlayPopupService$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/OverlayPopupService$3;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/service/OverlayPopupService$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/OverlayPopupService$2;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700f1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700f2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/16 v4, 0x8

    const-string v1, "OverlayPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/OverlayPopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mShowingCallEndBlink:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mShowingCallEndBlink:Z

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020178

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->showCallEndBlink()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallTime()V

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto()V

    goto :goto_0
.end method

.method protected onTouchEvent()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->goInCallScreen()V

    return-void
.end method

.method setTTS(J)V
    .locals 17

    const-wide/32 v13, 0x36ee80

    div-long v13, p1, v13

    long-to-int v5, v13

    const-wide/32 v13, 0x36ee80

    rem-long v13, p1, v13

    const-wide/32 v15, 0xea60

    div-long/2addr v13, v15

    long-to-int v6, v13

    const-wide/32 v13, 0xea60

    rem-long v13, p1, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v8, v13

    if-eqz v5, :cond_1

    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x1

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "%d"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    const v13, 0x7f0700ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/service/OverlayPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13, v1, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const v13, 0x7f0700ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/service/OverlayPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13, v1, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v12, :cond_0

    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v13

    const v13, 0x7f0700ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/service/OverlayPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13, v1, v9}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public showCallEndBlink()V
    .locals 4

    iget v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->stopSelf()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
