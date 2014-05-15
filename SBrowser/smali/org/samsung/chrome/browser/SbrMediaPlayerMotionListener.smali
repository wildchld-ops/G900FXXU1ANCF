.class Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;
.super Ljava/lang/Object;
.source "SbrMediaPlayerMotionListener.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SbrMediaPlayerMotionListener"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsListenerRegistered:Z

.field private mIsRegisteredListener:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mNativeSbrMediaPlayerMotionListener:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mNativeSbrMediaPlayerMotionListener:I

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    new-instance v0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;

    invoke-direct {v0, p0}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$1;-><init>(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsRegisteredListener:Z

    new-instance v0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$2;

    invoke-direct {v0, p0}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener$2;-><init>(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput p1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mNativeSbrMediaPlayerMotionListener:I

    const-string v0, "motion_recognition"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;)I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mNativeSbrMediaPlayerMotionListener:I

    return v0
.end method

.method static synthetic access$100(Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->nativePauseMedia(I)V

    return-void
.end method

.method private static create(ILandroid/content/Context;Landroid/media/MediaPlayer;)Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;

    invoke-direct {v0, p0, p1}, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method private native nativePauseMedia(I)V
.end method


# virtual methods
.method public registerReceiver()V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v4, 0x1

    const-string v1, "SbrMediaPlayerMotionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTML5]registerReceiver. isRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    if-nez v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_1
    iput-boolean v4, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    :cond_2
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SbrMediaPlayerMotionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTML5]unregisterReceiver. isRegistered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrMediaPlayerMotionListener;->mIsListenerRegistered:Z

    :cond_0
    return-void
.end method
