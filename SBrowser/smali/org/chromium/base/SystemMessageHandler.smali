.class Lorg/chromium/base/SystemMessageHandler;
.super Landroid/os/Handler;
.source "SystemMessageHandler.java"


# static fields
.field private static final DELAYED_TIMER_MESSAGE:I = 0x2

.field private static final TIMER_MESSAGE:I = 0x1


# instance fields
.field private mMessagePumpDelegateNative:I

.field private mStartupComplete:Z

.field private final mStartupCompleteTime:J

.field private mTimerFired:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v2, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/base/SystemMessageHandler;->mTimerFired:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lorg/chromium/base/SystemMessageHandler;->mStartupComplete:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/base/SystemMessageHandler;->mStartupCompleteTime:J

    iput p1, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:I

    return-void
.end method

.method private static create(I)Lorg/chromium/base/SystemMessageHandler;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/base/SystemMessageHandler;

    invoke-direct {v0, p0}, Lorg/chromium/base/SystemMessageHandler;-><init>(I)V

    return-object v0
.end method

.method private native nativeDoRunLoopOnce(I)Z
.end method

.method private removeTimer()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    return-void
.end method

.method private setDelayedTimer(J)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/SystemMessageHandler;->setTimer()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    invoke-virtual {p0, v2, p1, p2}, Lorg/chromium/base/SystemMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setTimer()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/chromium/base/SystemMessageHandler;->mTimerFired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/SystemMessageHandler;->startupComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/chromium/base/SystemMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/chromium/base/SystemMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final startupComplete()Z
    .locals 4

    iget-boolean v0, p0, Lorg/chromium/base/SystemMessageHandler;->mStartupComplete:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/base/SystemMessageHandler;->mStartupCompleteTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/SystemMessageHandler;->mStartupComplete:Z

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/SystemMessageHandler;->mStartupComplete:Z

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/base/SystemMessageHandler;->mTimerFired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget v0, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:I

    invoke-direct {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->nativeDoRunLoopOnce(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/base/SystemMessageHandler;->startupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/base/SystemMessageHandler;->setTimer()V

    :cond_1
    return-void
.end method
