.class public Lorg/chromium/content/browser/VSyncMonitor;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/VSyncMonitor$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_VSYNC_COUNT:I = 0x5

.field private static final NANOSECONDS_PER_MICROSECOND:J = 0x3e8L

.field private static final NANOSECONDS_PER_MILLISECOND:J = 0xf4240L

.field private static final NANOSECONDS_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mGoodStartingPointNano:J

.field private final mHandler:Landroid/os/Handler;

.field private mHaveRequestInFlight:Z

.field private mLastPostedNano:J

.field private mLastUpdateRequestNano:J

.field private mListener:Lorg/chromium/content/browser/VSyncMonitor$Listener;

.field private final mRefreshPeriodNano:J

.field private mTriggerNextVSyncCount:I

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mVSyncRunnableCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/VSyncMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/VSyncMonitor;->$assertionsDisabled:Z

    const-class v0, Lorg/chromium/content/browser/VSyncMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/VSyncMonitor;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/VSyncMonitor$Listener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/VSyncMonitor$Listener;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/VSyncMonitor$Listener;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/content/browser/VSyncMonitor;->mListener:Lorg/chromium/content/browser/VSyncMonitor$Listener;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, 0x4270

    :cond_0
    const v1, 0x4e6e6b28

    div-float/2addr v1, v0

    float-to-long v1, v1

    iput-wide v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    const/4 v1, 0x0

    iput v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mTriggerNextVSyncCount:I

    if-eqz p3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    new-instance v1, Lorg/chromium/content/browser/VSyncMonitor$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/VSyncMonitor$1;-><init>(Lorg/chromium/content/browser/VSyncMonitor;)V

    iput-object v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    iput-object v3, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lorg/chromium/content/browser/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    iput-object v3, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/VSyncMonitor$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/VSyncMonitor$2;-><init>(Lorg/chromium/content/browser/VSyncMonitor;)V

    iput-object v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/chromium/content/browser/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mGoodStartingPointNano:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mLastPostedNano:J

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/VSyncMonitor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/VSyncMonitor;->onVSyncCallback(J)V

    return-void
.end method

.method private getCurrentNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private onVSyncCallback(J)V
    .locals 3

    sget-boolean v0, Lorg/chromium/content/browser/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHaveRequestInFlight:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHaveRequestInFlight:Z

    iget v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mTriggerNextVSyncCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mTriggerNextVSyncCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mTriggerNextVSyncCount:I

    invoke-direct {p0}, Lorg/chromium/content/browser/VSyncMonitor;->postCallback()V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mListener:Lorg/chromium/content/browser/VSyncMonitor$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mListener:Lorg/chromium/content/browser/VSyncMonitor$Listener;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/content/browser/VSyncMonitor$Listener;->onVSync(Lorg/chromium/content/browser/VSyncMonitor;J)V

    :cond_2
    return-void
.end method

.method private postCallback()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHaveRequestInFlight:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHaveRequestInFlight:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/VSyncMonitor;->isVSyncSignalAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/VSyncMonitor;->postRunnableCallback()V

    goto :goto_0
.end method

.method private postRunnableCallback()V
    .locals 14

    sget-boolean v6, Lorg/chromium/content/browser/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/VSyncMonitor;->isVSyncSignalAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mLastUpdateRequestNano:J

    iget-wide v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mGoodStartingPointNano:J

    iget-wide v8, p0, Lorg/chromium/content/browser/VSyncMonitor;->mGoodStartingPointNano:J

    sub-long v8, v0, v8

    iget-wide v10, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    div-long/2addr v8, v10

    iget-wide v10, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    mul-long/2addr v8, v10

    add-long v4, v6, v8

    iget-wide v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v6, v4

    sub-long v2, v6, v0

    sget-boolean v6, Lorg/chromium/content/browser/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    add-long v6, v0, v2

    iget-wide v8, p0, Lorg/chromium/content/browser/VSyncMonitor;->mLastPostedNano:J

    iget-wide v10, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    iget-wide v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v2, v6

    :cond_3
    add-long v6, v0, v2

    iput-wide v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mLastPostedNano:J

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_4
    iget-object v6, p0, Lorg/chromium/content/browser/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/chromium/content/browser/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getVSyncPeriodInMicroseconds()J
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isVSyncSignalAvailable()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mTriggerNextVSyncCount:I

    invoke-direct {p0}, Lorg/chromium/content/browser/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mLastUpdateRequestNano:J

    invoke-direct {p0}, Lorg/chromium/content/browser/VSyncMonitor;->postCallback()V

    return-void
.end method

.method public setVSyncPointForICS(J)V
    .locals 0

    iput-wide p1, p0, Lorg/chromium/content/browser/VSyncMonitor;->mGoodStartingPointNano:J

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mTriggerNextVSyncCount:I

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/VSyncMonitor;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/VSyncMonitor;->mListener:Lorg/chromium/content/browser/VSyncMonitor$Listener;

    return-void
.end method
