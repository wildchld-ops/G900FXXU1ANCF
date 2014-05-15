.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;
    }
.end annotation


# static fields
.field private static final ACTION_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityReceiver"


# instance fields
.field private final mIntentFilter:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;->mIntentFilter:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;

    return-void
.end method

.method public static createNetworkChangeNotifierObserverForTest()Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkChangeNotifierObserver;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->checkAllowPrefetch()Z

    const-string v6, "noConnectivity"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "NetworkConnectivityReceiver"

    const-string v7, "Network connectivity changed, no connectivity."

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_1
    const-string v6, "NetworkConnectivityReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network connectivity changed, status is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;->mIntentFilter:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
