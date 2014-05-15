.class public Lcom/samsung/dialer/util/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;,
        Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static bErrorSpeech:Z

.field private static mCheckTryToCall:Z

.field private static mCheckTwiceEvent:Z

.field private static mIsStartedProximitySensor:Z


# instance fields
.field private IsTTSInitiated:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;

.field private unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/dialer/util/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->bErrorSpeech:Z

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTryToCall:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->IsTTSInitiated:Z

    new-instance v0, Lcom/samsung/dialer/util/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/util/DirectCallingManager$1;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/dialer/util/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/util/DirectCallingManager$3;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/samsung/dialer/util/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/util/DirectCallingManager$4;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/samsung/dialer/util/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/util/DirectCallingManager$5;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mActiveMode:I

    sput-boolean v1, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    sput-boolean v1, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTryToCall:Z

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dialer/util/DirectCallingManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/dialer/util/DirectCallingManager;)Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/dialer/util/DirectCallingManager;Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;)Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/dialer/util/DirectCallingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/dialer/util/DirectCallingManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/samsung/dialer/util/DirectCallingManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/samsung/dialer/util/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/dialer/util/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/dialer/util/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/dialer/util/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/samsung/dialer/util/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/dialer/util/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/dialer/util/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/dialer/util/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/dialer/util/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/dialer/util/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/dialer/util/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/dialer/util/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/samsung/dialer/util/DirectCallingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$2700()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/dialer/util/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/dialer/util/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/dialer/util/DirectCallingManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTryToCall:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/dialer/util/DirectCallingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/dialer/util/DirectCallingManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->isCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->setTextToSpeech()V

    return-void
.end method

.method private isCall()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "User is calling..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSensorReadyForDirectCall(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v6, "sensor"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v7, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v6, v7

    :goto_2
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private makeVibrate()V
    .locals 3

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    return-void
.end method

.method private readyForCall(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/dialer/util/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/dialer/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerDirectCall()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method private registerMotionRecognition()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredProximity:Z

    iput-boolean v3, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setIsSpeechRecorgnizing(Z)V
    .locals 3

    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSpeechRecorgnizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/samsung/dialer/util/DirectCallingManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/util/DirectCallingManager$2;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method private setTextToSpeech()V
    .locals 0

    return-void
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->setTextToSpeech()V

    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakText, mTextToSpeech : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speak, ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "utteranceId"

    const-string v3, "DirectCalling ended"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v1

    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSilence     ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_0

    sput-boolean v5, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v5, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v5, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v5, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    goto :goto_0
.end method

.method private stopSpeechRecognition()V
    .locals 0

    return-void
.end method

.method private stopTTS()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "stopTTS"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeechListener:Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mTextToSpeechListener:Lcom/samsung/dialer/util/DirectCallingManager$TTSListener;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryToCall(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToCall, mActiveMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mActiveMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallDetailActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "0038"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->makeVibrate()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0274

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContactDetailActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "0040"

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mActiveMode:I

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContactDetailActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/activities/ContactDetailActivity;

    iput-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContactDetailActivity:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->setMotionCallByOrientation()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2, v5, p1}, Lcom/samsung/dialer/util/CallLogUtil;->makeCallForResult(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "tryToCall, mCheckTwiceEvent is false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v4, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    sput-boolean v5, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTryToCall:Z

    goto :goto_1
.end method

.method private unregisterAccelerometer()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterDirectCall()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->unregisterMotionRecognition()V

    return-void
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mRegisteredProximity:Z

    iput-boolean v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    :pswitch_1
    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "PROXIMITY_DISABLE, mCheckTwiceEvent is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    :pswitch_2
    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "PROXIMITY_FORCE_STOP, mCheckTwiceEvent is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionPartialResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected AnalizeRecorgnitionResult(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPickupToCallOut()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v2, :cond_0

    if-ne v0, v2, :cond_0

    :goto_0
    const-string v3, "Logs/DirectCallingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPickupToCallOut() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method protected onResultErrorCode(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/dialer/util/DirectCallingManager;->speakText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/dialer/util/DirectCallingManager;->bErrorSpeech:Z

    invoke-direct {p0, v5}, Lcom/samsung/dialer/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void

    :pswitch_0
    const v2, 0x7f0e0329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0e032a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0e032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0e032c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v2, 0x7f0e032d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v2, 0x7f0e032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const v2, 0x7f0e032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const v2, 0x7f0e0330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const v2, 0x7f0e0331

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTryToCall:Z

    invoke-virtual {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->getPickupToCallOut()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->stopTTS()V

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->stopSpeechRecognition()V

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->unregisterDirectCall()V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTryToCall:Z

    invoke-virtual {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->getPickupToCallOut()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/samsung/dialer/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v3, Lcom/samsung/dialer/util/DirectCallingManager;->mCheckTwiceEvent:Z

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/samsung/dialer/util/DirectCallingManager;Lcom/samsung/dialer/util/DirectCallingManager$1;)V

    iput-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager;->unlockReceiver:Lcom/samsung/dialer/util/DirectCallingManager$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->registerDirectCall()V

    invoke-direct {p0}, Lcom/samsung/dialer/util/DirectCallingManager;->setTextToSpeech()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method
