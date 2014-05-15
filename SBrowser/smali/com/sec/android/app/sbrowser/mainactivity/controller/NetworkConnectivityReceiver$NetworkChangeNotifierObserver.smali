.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;
.super Ljava/lang/Object;
.source "NetworkConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkChangeNotifierObserver"
.end annotation


# instance fields
.field private mNativeNotifierObserver:I

.field private mReceivedNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mReceivedNotification:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mNativeNotifierObserver:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->nativeInit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mNativeNotifierObserver:I

    return-void
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit()I
.end method

.method private setReceivedNotification()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "NetworkChangeNotifierObserver"
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mReceivedNotification:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mNativeNotifierObserver:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mNativeNotifierObserver:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mNativeNotifierObserver:I

    :cond_0
    return-void
.end method

.method public hasReceivedNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;->mReceivedNotification:Z

    return v0
.end method
