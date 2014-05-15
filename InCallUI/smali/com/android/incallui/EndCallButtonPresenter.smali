.class public Lcom/android/incallui/EndCallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "EndCallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field public static fromEndcallDriveLink:Z

.field public static fromMWEndcallDriveLink:Z

.field private static sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mForceFinishActivity:Z

.field private mPreviousMuteState:Z

.field private mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mShowGenericMerge:Z

.field private mShowManageConference:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    sput-boolean v0, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mAutomaticallyMuted:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mPreviousMuteState:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mShowGenericMerge:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mShowManageConference:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-void
.end method

.method private getContactInfo()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/EndCallButtonPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/EndCallButtonPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/EndCallButtonPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPersonId()J
    .locals 5

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    :cond_0
    return-wide v1
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_0

    const-string v2, "emergency_find_lost_phone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private requestDisableAllButtons()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableAllButtons(Z)V

    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->setVisible(Z)V

    const-string v2, "Updating call UI for call: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Updating call UI for call: isVisible = "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/EndCallButtonPresenter;->updateEndCallButtonDisplayInfo(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cleanupInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;

    return-void
.end method

.method public createContactClicked()V
    .locals 4

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sip"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public ipCallClicked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "ipcall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/EndCallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/EndCallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V

    iput-object p1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_2
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_4

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    iget-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_5
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    iput-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonPresenter;->onUiReady(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonPresenter;->onUiUnready(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method requestUpdateDueToContactQuery(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->getVisibile()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonPresenter;->updateEndCallButtonDisplayInfo(I)V

    goto :goto_0
.end method

.method public sendDrivelinkMessageClicked()V
    .locals 12

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContactInfo()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    const-string v2, "com.sec.android.automotive.drivelink"

    const-string v1, "com.sec.android.automotive.drivelink.message.MessageComposerActivity"

    const-string v5, "userfirstname"

    const-string v6, "userlastname"

    const-string v4, "userdisplayname"

    const-string v7, "usernumber"

    const-string v3, "userbitmap"

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v9, "usernumber"

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "userfirstname"

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.automotive.drivelink"

    const-string v11, "com.sec.android.automotive.drivelink.message.MessageComposerActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0, v8}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendMessageClicked()V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/EndCallButtonPresenter;->log(Ljava/lang/String;)V

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVoiceCall()Z

    move-result v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/incallui/CallCommandClient;->setEndCallNumberForLGTRAD(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/EndCallButtonPresenter;->log(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "support_oem_message_for_kk"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public updateEndCallButtonDisplayInfo(I)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v9, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    if-eq v6, v9, :cond_2

    iget v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v9, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    if-ne v6, v9, :cond_7

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    const-string v6, "isEmergency : "

    invoke-static {p0, v6, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v6, "contactExists : "

    invoke-static {p0, v6, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v6, "isNumberExists : "

    invoke-static {p0, v6, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v3, :cond_9

    move v6, v7

    :goto_2
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showCreateContact(Z)V

    if-nez v2, :cond_a

    if-nez v1, :cond_a

    if-eqz v3, :cond_a

    move v6, v7

    :goto_3
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showUpdateExisting(Z)V

    if-nez v2, :cond_b

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    move v6, v7

    :goto_4
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showViewContact(Z)V

    if-nez v2, :cond_c

    if-eqz v3, :cond_c

    move v6, v7

    :goto_5
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableCreateContact(Z)V

    if-nez v2, :cond_d

    if-eqz v3, :cond_d

    move v6, v7

    :goto_6
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableUpdateExisting(Z)V

    if-nez v2, :cond_e

    if-eqz v3, :cond_e

    move v6, v7

    :goto_7
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableViewContact(Z)V

    if-nez v2, :cond_f

    if-eqz v3, :cond_f

    move v6, v7

    :goto_8
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableVoiceCall(Z)V

    if-nez v2, :cond_10

    if-eqz v3, :cond_10

    move v6, v7

    :goto_9
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableVideoCall(Z)V

    if-nez v2, :cond_11

    if-eqz v3, :cond_11

    move v6, v7

    :goto_a
    invoke-interface {v5, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableSendMessage(Z)V

    const-string v6, "ims_rcs"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :cond_4
    const-string v6, "ip_call"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v2, :cond_12

    if-eqz v3, :cond_12

    :goto_b
    invoke-interface {v5, v7}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableIpCall(Z)V

    :cond_5
    invoke-interface {v5}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->updateEndCallButtonDrawable()V

    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallCommandClient;->isFindService()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_6
    invoke-interface {v5, v8}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableAllButtons(Z)V

    invoke-interface {v5, v8}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showAllButtons(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    move v6, v8

    goto/16 :goto_2

    :cond_a
    move v6, v8

    goto/16 :goto_3

    :cond_b
    move v6, v8

    goto/16 :goto_4

    :cond_c
    move v6, v8

    goto/16 :goto_5

    :cond_d
    move v6, v8

    goto/16 :goto_6

    :cond_e
    move v6, v8

    goto/16 :goto_7

    :cond_f
    move v6, v8

    goto/16 :goto_8

    :cond_10
    move v6, v8

    goto/16 :goto_9

    :cond_11
    move v6, v8

    goto :goto_a

    :cond_12
    move v7, v8

    goto :goto_b
.end method

.method public updateExistingClicked()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "hidecreatelabel"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sip"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v2, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phone_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public videoCallClicked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public viewContactClicked()V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPersonId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x3000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public voiceCallClicked()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    if-eqz v2, :cond_0

    const-string v2, "setFromEndButtonDriveLink"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v5, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    :cond_0
    sget-boolean v2, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    if-eqz v2, :cond_1

    const-string v2, "setFromMWEndButtonDriveLink"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v5, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public voiceCallLongClicked()V
    .locals 4

    const-string v2, "support_photo_ring"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.PhotoRingScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "dest_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
