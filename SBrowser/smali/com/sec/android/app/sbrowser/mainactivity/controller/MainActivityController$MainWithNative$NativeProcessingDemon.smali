.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;
.super Ljava/lang/Object;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeProcessingDemon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;
    }
.end annotation


# instance fields
.field private mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

.field private mWebKitTimersAreSuspended:Z

.field final synthetic this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;)V

    return-void
.end method

.method static synthetic access$3602(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->closeIdleConnections()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->onDestroy()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->onPause()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->onResume()V

    return-void
.end method

.method private closeIdleConnections()V
    .locals 0

    return-void
.end method

.method private onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    :cond_0
    return-void
.end method

.method private onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->closeIdleConnections()V

    :cond_0
    return-void
.end method

.method private onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    goto :goto_0
.end method
