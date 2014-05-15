.class public Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;
.super Ljava/lang/Object;
.source "MediaPlayerMotionListener.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MediaPlayerMotionListener"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentView:Lorg/chromium/content/browser/ContentView;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mIsHeadsetPlugged:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mIsHeadsetPlugged:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$1;-><init>(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener$2;-><init>(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Lorg/chromium/content/browser/ContentView;)Lorg/chromium/content/browser/ContentView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mContentView:Lorg/chromium/content/browser/ContentView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mIsHeadsetPlugged:Z

    return p1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/MediaPlayerMotionListener;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    return-void
.end method
