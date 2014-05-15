.class public Lcom/android/phone/AdjustRingtone;
.super Ljava/lang/Object;
.source "AdjustRingtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AdjustRingtone$VibratorThread;
    }
.end annotation


# static fields
.field private static sIsAdjusted:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentRingerVolume:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginRingtoneVolume:I

.field private mRingerUpdateDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/AdjustRingtone;->sIsAdjusted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    iput v0, p0, Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I

    iput v0, p0, Lcom/android/phone/AdjustRingtone;->mRingerUpdateDelay:I

    new-instance v0, Lcom/android/phone/AdjustRingtone$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AdjustRingtone$1;-><init>(Lcom/android/phone/AdjustRingtone;)V

    iput-object v0, p0, Lcom/android/phone/AdjustRingtone;->mHandler:Landroid/os/Handler;

    const-string v0, "AdjustRingtone.."

    invoke-direct {p0, v0}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/AdjustRingtone;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/AdjustRingtone;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AdjustRingtone;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/phone/AdjustRingtone;)I
    .locals 2

    iget v0, p0, Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/AdjustRingtone;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AdjustRingtone;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AdjustRingtone;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/AdjustRingtone;->mRingerUpdateDelay:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/AdjustRingtone;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AdjustRingtone"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public startRingtoneEscalating()V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x1

    const-string v0, "startRingtoneEscalating.."

    invoke-direct {p0, v0}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/phone/AdjustRingtone;->sIsAdjusted:Z

    if-ne v0, v3, :cond_1

    const-string v0, "startRingtoneEscalating: Already consumed."

    invoke-direct {p0, v0}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRingtoneEscalating: getStreamVolume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    iput v0, p0, Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setSidetouchOriginRingtoneVolume(I)V

    iget v0, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/AdjustRingtone;->mRingerUpdateDelay:I

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/phone/AdjustRingtone;->mRingerUpdateDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    sput-boolean v3, Lcom/android/phone/AdjustRingtone;->sIsAdjusted:Z

    goto :goto_0
.end method

.method public stopRingtoneEscalating()V
    .locals 2

    const/16 v1, 0x64

    const-string v0, "stopRingtoneEscalating.."

    invoke-direct {p0, v0}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-boolean v0, Lcom/android/phone/AdjustRingtone;->sIsAdjusted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRingtoneEscalating: origin Volume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/AdjustRingtone;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/AdjustRingtone;->sIsAdjusted:Z

    :cond_1
    return-void
.end method
