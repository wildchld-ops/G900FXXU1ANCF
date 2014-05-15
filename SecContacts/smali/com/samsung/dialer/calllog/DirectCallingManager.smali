.class public Lcom/samsung/dialer/calllog/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/calllog/DirectCallingManager$TTSListener;,
        Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;,
        Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;,
        Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
    }
.end annotation


# static fields
.field private static CALL_CONNECT_TONE:Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static bErrorSpeech:Z

.field public static mCheckTwiceEvent:Z

.field private static mIsStartedProximitySensor:Z


# instance fields
.field private IsTTSInitiated:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

.field private mContext:Landroid/content/Context;

.field private mDirectCallActivity:Lcom/samsung/dialer/calllog/DirectCallActivityInterface;

.field private mFinishTutorial:Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mPaused:Z

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/samsung/dialer/calllog/DirectCallingManager$TTSListener;

.field private mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/samsung/dialer/calllog/DirectCallingManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/dialer/calllog/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/dialer/calllog/DirectCallingManager;->bErrorSpeech:Z

    sput-boolean v2, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v2, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    return-void
.end method

.method public constructor <init>(ILcom/samsung/dialer/calllog/DirectCallActivityInterface;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->IsTTSInitiated:Z

    iput-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    iput-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mPaused:Z

    new-instance v0, Lcom/samsung/dialer/calllog/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager$1;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iput-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iput-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mActiveMode:I

    iput-object p2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mDirectCallActivity:Lcom/samsung/dialer/calllog/DirectCallActivityInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/calllog/DirectCallingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dialer/calllog/DirectCallingManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;)Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/dialer/calllog/DirectCallingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/dialer/calllog/DirectCallingManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->isCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/dialer/calllog/DirectCallingManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/samsung/dialer/calllog/DirectCallingManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/samsung/dialer/calllog/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/dialer/calllog/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/dialer/calllog/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/dialer/calllog/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2002(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/samsung/dialer/calllog/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/dialer/calllog/DirectCallingManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/dialer/calllog/DirectCallingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/dialer/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/samsung/dialer/calllog/DirectCallingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/dialer/calllog/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/dialer/calllog/DirectCallingManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/dialer/calllog/DirectCallingManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/dialer/calllog/DirectCallingManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/dialer/calllog/DirectCallingManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;)Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/dialer/calllog/DirectCallingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mPaused:Z

    return v0
.end method

.method private isCall()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

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

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeVibrate()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readyForCall(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->tryToCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager$4;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerMotionRecognition()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/dialer/calllog/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager$3;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    :cond_2
    invoke-static {}, Lcom/samsung/dialer/calllog/TimeChecker;->sStart()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListenerEvent,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/dialer/calllog/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/dialer/calllog/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager$5;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredProximity:Z

    iput-boolean v3, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

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

    iput-boolean p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method private setTextToSpeech(Landroid/content/Context;)V
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

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ret:"

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

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

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

    sput-boolean v5, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v5, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    :cond_0
    return-void
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

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeechListener:Lcom/samsung/dialer/calllog/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mTextToSpeechListener:Lcom/samsung/dialer/calllog/DirectCallingManager$TTSListener;

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
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->makeVibrate()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/dialer/calllog/FakeCallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mFinishTutorial:Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;

    invoke-interface {v0}, Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;->onFinishTutorial()V

    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    return-void
.end method

.method private unregisterAccelerometer()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mRegisteredProximity:Z

    iput-boolean v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProximitySensorMode(), proximitySensorModeEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->proximitySensorModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    :pswitch_1
    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    :pswitch_2
    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v3, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->unregisterProximity()V

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

    invoke-direct {p0, v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

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

    invoke-direct {p0, v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->readyForCall(Ljava/lang/String;)V

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

.method public getPickupToCallOut(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget v4, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mActiveMode:I

    if-ne v4, v2, :cond_1

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v2, :cond_2

    if-ne v0, v2, :cond_2

    :goto_1
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

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected onResultErrorCode(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    invoke-direct {p0, v0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->speakText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/dialer/calllog/DirectCallingManager;->bErrorSpeech:Z

    invoke-direct {p0, v5}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

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

.method public pause(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mPaused:Z

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->stopTTS()V

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->stopSpeechRecognition()V

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->unregisterMotionRecognition()V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mDirectCallActivity:Lcom/samsung/dialer/calllog/DirectCallActivityInterface;

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    if-nez v2, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    invoke-direct {v2, p0, v5}, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$1;)V

    iput-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mDirectCallActivity:Lcom/samsung/dialer/calllog/DirectCallActivityInterface;

    invoke-interface {v2}, Lcom/samsung/dialer/calllog/DirectCallActivityInterface;->isAvailableDirectCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->pause(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v2, "Logs/DirectCallingManager"

    const-string v3, "resume"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mPaused:Z

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setContext(Landroid/content/Context;)V

    sput-boolean v4, Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    sput-boolean v4, Lcom/samsung/dialer/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_4

    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_4
    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    if-nez v2, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    invoke-direct {v2, p0, v5}, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$1;)V

    iput-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mUnlockReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$UnlockReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->registerMotionRecognition()V

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setFinishTutorialListener(Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager;->mFinishTutorial:Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;

    return-void
.end method
