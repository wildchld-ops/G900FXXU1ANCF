.class public Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;
.super Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;
.source "TwAdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAdvancedByHost:Z

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->FLIP_MSG:I

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->FLIP_MSG:I

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mLoopViews:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    return v0
.end method

.method private updateRunning()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method private updateRunning(Z)V
    .locals 5

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mUserPresent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_1

    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->showOnly(IZ)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAdvancedByHost:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    return-void
.end method

.method public isAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->startFlipping()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mVisible:Z

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method public setAutoStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mAutoStart:Z

    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showNext()V

    return-void
.end method

.method public showPrevious()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;->showPrevious()V

    return-void
.end method

.method public startFlipping()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    return-void
.end method

.method public stopFlipping()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->mStarted:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewFlipper;->updateRunning()V

    return-void
.end method
