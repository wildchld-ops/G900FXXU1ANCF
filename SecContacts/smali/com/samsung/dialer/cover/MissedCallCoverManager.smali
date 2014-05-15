.class public Lcom/samsung/dialer/cover/MissedCallCoverManager;
.super Ljava/lang/Object;
.source "MissedCallCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverOpen:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInitCoverOpenState:Z

.field private mInitDialogDismissState:Z

.field private mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

.field private mReceiver:Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    iput-boolean v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z

    iput-boolean v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z

    iput-boolean v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitDialogDismissState:Z

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v3, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z

    iget-boolean v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z

    iput-boolean v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z

    :cond_0
    new-instance v1, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;-><init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;)V

    iput-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/dialer/cover/MissedCallCoverManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/dialer/cover/MissedCallCoverManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z

    return p1
.end method

.method private startMissedCallDialog()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/dialer/cover/MissedCallCoverManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/cover/MissedCallCoverManager$2;-><init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismissMissedCallCover()V
    .locals 2

    const-string v0, "MissedCallCoverManager"

    const-string v1, "dismissMissedCallCover, dismiss showing dialong"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->dismissDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitDialogDismissState:Z

    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    new-instance v1, Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;-><init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;Lcom/samsung/dialer/cover/MissedCallCoverManager$1;)V

    iput-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mReceiver:Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;

    const-string v1, "MissedCallCoverManager"

    const-string v2, "registerReceiver ClearCover"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mReceiver:Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method

.method public resumeMissedCallDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MissedCallCoverManager"

    const-string v1, "KeepMissedCallDialog  Keep Dialong"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->startMissedCallDialog()V

    :cond_0
    return-void
.end method

.method public showMissedCallDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-eqz v0, :cond_0

    const-string v0, "MissedCallCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallDialog  Dialong is showing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->isDialogShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MissedCallCoverManager"

    const-string v1, "showMissedCallDialog  Show Dialong"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->startMissedCallDialog()V

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->displayDialog()V

    :cond_1
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mReceiver:Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mReceiver:Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mReceiver:Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_1
    return-void
.end method

.method public updateMissedCallDialog(ZLcom/android/dialer/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const-string v0, "MissedCallCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post, mCoverOpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isResumed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInitDialogDismissState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitDialogDismissState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitDialogDismissState:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/dialer/cover/MissedCallCover;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/dialer/cover/MissedCallCover;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    const-string v0, "MissedCallCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post, create MissedCallCover : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->showMissedCallDialog()V

    :cond_0
    move v0, v7

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover;->dismissDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager;->mMissedCallCover:Lcom/samsung/dialer/cover/MissedCallCover;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
