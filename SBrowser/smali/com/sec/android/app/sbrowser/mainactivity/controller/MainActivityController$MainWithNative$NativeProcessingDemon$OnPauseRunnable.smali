.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPauseRunnable"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;->this$2:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;->this$2:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mOnPauseRunnable:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$3602(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;->this$2:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$3700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;->this$2:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->mWebKitTimersAreSuspended:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$3702(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon$OnPauseRunnable;->this$2:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->closeIdleConnections()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;->access$3800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative$NativeProcessingDemon;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
