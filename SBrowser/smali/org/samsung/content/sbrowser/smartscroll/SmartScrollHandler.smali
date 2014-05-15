.class public Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;
.super Ljava/lang/Object;
.source "SmartScrollHandler.java"


# static fields
.field private static final DOCK_START_SMART_SCROLL:I


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mConecttedDock:Z

.field private mContext:Landroid/content/Context;

.field private mInVSync:Z

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field private mSettingsContentResolver:Landroid/content/ContentResolver;

.field private mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

.field private mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

.field final mVsyncCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSettingsContentResolver:Landroid/content/ContentResolver;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mConecttedDock:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mInVSync:Z

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$1;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler$2;-><init>(Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mVsyncCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSettingsContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method private initVSync()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private stopVSync()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mInVSync:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mVsyncCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private updateVSync()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mInVSync:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mInVSync:Z

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->initVSync()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mVsyncCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method doVSync(J)V
    .locals 4

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStartScroll()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mVsyncCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->pauseSmartScroll()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setSmartMotionScrollAngle(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->delayResumeSmartScroll()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isConecttedDock()Z

    move-result v1

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mConecttedDock:Z

    iget-boolean v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mConecttedDock:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->checkSmartScrollType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->stopSmartScroll()V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    :cond_2
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    if-nez v1, :cond_3

    new-instance v1, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->sendStartSmartScroll()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->stopSmartScroll()V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    :cond_5
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    if-nez v1, :cond_3

    new-instance v1, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;-><init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->sendStartSmartScroll()V

    goto :goto_0
.end method

.method public onStartByDock()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStartScroll()V
    .locals 2

    sget-boolean v0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartScrollHandler"

    const-string v1, "onStartScroll,onStartScroll:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isDisableSmartScroll()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->setStartSmartScroll()V

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->setStartSmartScroll()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;->stopSmartScroll()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartFaceListener:Lorg/samsung/content/sbrowser/smartscroll/SmartFaceListener;

    :cond_1
    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;->stopSmartScroll()V

    iput-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mSmartMotionListener:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    :cond_2
    return-void
.end method

.method public setEnableVSync(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->updateVSync()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->stopVSync()V

    goto :goto_0
.end method

.method public setInitVSync()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->mInVSync:Z

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->initVSync()V

    return-void
.end method
