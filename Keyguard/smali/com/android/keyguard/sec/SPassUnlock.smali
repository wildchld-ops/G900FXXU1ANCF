.class public Lcom/android/keyguard/sec/SPassUnlock;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/keyguard/BiometricSensorUnlock;


# static fields
.field private static mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

.field private static mStatusImage:Landroid/widget/ImageView;

.field private static mStatusText:Landroid/widget/TextView;


# instance fields
.field private final FAILED_STATUS:I

.field private final FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

.field private final IDLE_ANIM_STATUS:I

.field private final IDLE_STATUS:I

.field private final MSG_CANCEL:I

.field private final MSG_IDENTIFY:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_READY:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_UNLOCK:I

.field private final PASSED_STATUS:I

.field private final SCANNING_STATUS:I

.field private final SCREEN_TIMEOUT:I

.field private final SUCCEED_STATUS:I

.field private final WAITING_STATUS:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastRegistered:Z

.field private final mContext:Landroid/content/Context;

.field private mErrorIcon:I

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mImageQuality:I

.field private mIsCaptured:Z

.field private mIsIdentifyFinished:Z

.field private mIsPassed:Z

.field private mIsRegisteredClient:Z

.field private mIsScanningAnimationFinished:Z

.field private mIsTalkbackModeOn:Z

.field mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSPassUnlockView:Landroid/view/View;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x458

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_UNLOCK:I

    const/16 v1, 0x459

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_CANCEL:I

    const/16 v1, 0x45a

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    const/16 v1, 0x45b

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_POKE_WAKELOCK:I

    const/16 v1, 0x45c

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_READY:I

    const/16 v1, 0x45d

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->MSG_IDENTIFY:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->IDLE_STATUS:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->SCANNING_STATUS:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->FAILED_STATUS:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->PASSED_STATUS:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->WAITING_STATUS:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->SUCCEED_STATUS:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->IDLE_ANIM_STATUS:I

    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->SCREEN_TIMEOUT:I

    new-instance v1, Lcom/android/keyguard/sec/SPassUnlock$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SPassUnlock$1;-><init>(Lcom/android/keyguard/sec/SPassUnlock;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    new-instance v1, Lcom/android/keyguard/sec/SPassUnlock$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SPassUnlock$2;-><init>(Lcom/android/keyguard/sec/SPassUnlock;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

    new-instance v1, Lcom/android/keyguard/sec/SPassUnlock$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SPassUnlock$3;-><init>(Lcom/android/keyguard/sec/SPassUnlock;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "(?i).*talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsTalkbackModeOn:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SPassUnlock;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/SPassUnlock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SPassUnlock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SPassUnlock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SPassUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SPassUnlock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    return-void
.end method

.method private pokeWakelock()V
    .locals 3

    const-string v1, "SPassUnlock"

    const-string v2, "pokeWakelock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    if-nez v1, :cond_0

    const-string v1, "SPassUnlock"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    const-string v1, "SPassUnlock"

    const-string v3, "registerClient() : FingerPrintManager is not possilbe"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    const-string v3, "SPassUnlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClient() mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const-string v1, "SPassUnlock"

    const-string v3, "registerClient() : FingerprintClientSpecBuilder is not possible"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setErrorCaseText(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedback(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedback(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mErrorIcon:I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsTalkbackModeOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mErrorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private startFailedAnimation()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->stopIdentify()V

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v1, 0x190

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    :cond_2
    return-void
.end method

.method private startIdentify()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SPassUnlock"

    const-string v1, "identify OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v1, 0x459

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SPassUnlock"

    const-string v1, "identify request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startIdleAnimation(Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startIdentify()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private startScanningAnimation()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v1, 0x12c

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    :cond_1
    return-void
.end method

.method private startSucceedAnimation()V
    .locals 5

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const-wide/16 v2, 0x12c

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(I)V

    :cond_0
    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const v2, 0x7f0600e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object v1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x458

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "SPassUnlock"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mBroadcastRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/16 v2, 0x458

    const-string v0, "SPassUnlock"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SPassAnimationView;->cleanUp()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_2
    return-void
.end method

.method handleCancel()V
    .locals 3

    const-string v0, "SPassUnlock"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    const-wide/16 v9, 0x1f4

    const/16 v8, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    const-string v4, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->handleUnlock()V

    :cond_0
    :goto_1
    move v3, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->handleCancel()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SPassUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    :sswitch_4
    const-string v5, "SPassUnlock"

    const-string v6, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassUnlock;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->pokeWakelock()V

    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startScanningAnimation()V

    goto :goto_1

    :sswitch_5
    const-string v3, "SPassUnlock"

    const-string v5, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_6
    const-string v3, "SPassUnlock"

    const-string v5, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v5, :cond_2

    const-string v3, "SPassUnlock"

    const-string v5, "handleMessage : RESULT_SUCCESS"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    goto :goto_1

    :cond_2
    iget v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const-string v5, "SPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-eq v5, v8, :cond_4

    iget v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    const-string v5, "SPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_1

    :cond_4
    iget v3, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v3, v8, :cond_5

    const-string v3, "SPassUnlock"

    const-string v5, "TIMEOUT CASE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x459

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x45d

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const-string v5, "SPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : EVENT_IDENTIFY_STATUS eventStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    const-string v5, "SPassUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsPassed:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsIdentifyFinished:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsScanningAnimationFinished:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "SPassUnlock"

    const-string v5, "handleMessage : EVENT_FINGER_SWIPE_SPEED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getSwipeSpeed()I

    move-result v2

    const-string v3, "SPassUnlock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "speed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->startIdentify()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xc -> :sswitch_4
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x3f3 -> :sswitch_5
        0x3f5 -> :sswitch_9
        0x458 -> :sswitch_0
        0x459 -> :sswitch_1
        0x45a -> :sswitch_2
        0x45b -> :sswitch_3
        0x45d -> :sswitch_a
    .end sparse-switch
.end method

.method handlePokeWakelock(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    const-string v0, "SPassUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    return-void
.end method

.method handleUnlock()V
    .locals 2

    const-string v0, "SPassUnlock"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2

    const-string v0, "SPassUnlock"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mSPassUnlockView:Landroid/view/View;

    return-void
.end method

.method public initializeViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    check-cast p2, Landroid/widget/ImageView;

    sput-object p2, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast p3, Lcom/android/keyguard/sec/SPassAnimationView;

    sput-object p3, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->setSPassAnimationListener(Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;)V

    return-void
.end method

.method public onInit(I)V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public start()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "SPassUnlock"

    const-string v5, "start()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mExpiredTime:J

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->registerClient()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->unregisterBroadcastReceiver()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsCaptured:Z

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/SPassUnlock;->startIdleAnimation(Z)V

    sget-object v3, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v4, "SPassUnlock"

    const-string v5, "Failed to call FingerprintServiceStarter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassUnlock;->registerBroadcastReceiver()V

    move v2, v3

    goto :goto_1
.end method

.method public stop()Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SPassUnlock"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mStatusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassUnlock;->unregisterClient()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mIsRegisteredClient:Z

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/SPassUnlock;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SPassAnimationView;->stopAnimation(I)V

    :cond_1
    return v2
.end method

.method public stopAndShowBackup()V
    .locals 2

    const-string v0, "SPassUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopIdentify()V
    .locals 2

    const-string v0, "SPassUnlock"

    const-string v1, "stopIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    return-void
.end method

.method public unregisterClient()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    const-string v0, "SPassUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method
