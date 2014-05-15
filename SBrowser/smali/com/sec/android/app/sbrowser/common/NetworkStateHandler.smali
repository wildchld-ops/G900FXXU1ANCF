.class public Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;
.super Ljava/lang/Object;
.source "NetworkStateHandler.java"


# static fields
.field private static final CMCC:Ljava/lang/String; = "CMCC"

.field private static final CRICKET:Ljava/lang/String; = "Cricket"

.field private static final CSPIRE:Ljava/lang/String; = "CSPire"

.field private static final ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String; = null

.field static final LOGTAG:Ljava/lang/String; = "NetworkStateHandler"

.field private static final MAPN_FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field private static final MAPN_TYPE_MOBILE_WAP:I = 0x10

.field private static final METROPCS:Ljava/lang/String; = "MetroPCS"

.field static final NETWORK_ERROR:I = 0x8

.field private static final NETWORK_ERROR_DATA_BLOCKED_DURING_CALL:I = 0x7

.field private static final NETWORK_ERROR_DATA_LIMIT:I = 0x3

.field private static final NETWORK_ERROR_DATA_ROAMING:I = 0x2

.field private static final NETWORK_ERROR_FLIGHT_MODE:I = 0x0

.field private static final NETWORK_ERROR_MOBILE_DATA:I = 0x1

.field private static final NETWORK_ERROR_NO_SIGNAL:I = 0x4

.field private static final NETWORK_STATE_MOBILE:I = 0x1

.field private static final NETWORK_STATE_NONE:I = 0x0

.field private static final NETWORK_STATE_WIFI:I = 0x2

.field private static final PROXY_CMWAP:Ljava/lang/String; = "10.0.0.172:80"

.field private static final PROXY_CRICKET:Ljava/lang/String; = "wap.mycricket.com:8080"

.field private static final PROXY_CSPIRE:Ljava/lang/String; = "66.175.144.90:8080"

.field private static final PROXY_METROPCS:Ljava/lang/String; = "proxy.metropcs.net:3128"

.field private static final PROXY_TESTBED:Ljava/lang/String; = "10.200.60.15:3128"

.field private static final bNeedToCheckCustomProxy:Z

.field private static mPopupExist:Z

.field public static mWifiAPListPopuped:Z


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mPopupExist:Z

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mWifiAPListPopuped:Z

    const-string v1, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v1}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->bNeedToCheckCustomProxy:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v3, "CscFeature_Web_ShowWifiAPList"

    invoke-static {v3}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-boolean v3, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mWifiAPListPopuped:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isBrowserAllowedByDPM()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isBrowserAllowedBySharedPreference()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$1;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string v3, "CMCC"

    const-string v4, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v4}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->startNetwork(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static checkNetwork(Landroid/content/Context;)I
    .locals 5

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static closeNetwork(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const-string v4, "NetworkStateHandler"

    const-string v5, " closeNetwork : mApnSettings == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultapn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "cmwap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const-string v5, "enableWAP"

    invoke-virtual {v1, v4, v5}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    const-string v4, "NetworkStateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " closeNetwork : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isBrowserAllowedByDPM()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private isBrowserAllowedBySharedPreference()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "AllowBrowser"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private isDataBlockedDuringCall()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "NetworkStateHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataBlockedDuringCall() : TelephonyManager.getDataState() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TelephonyManager.getCallState() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isDataRoamingOff()Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v4, "phone2"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isFlightMode()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMobileDataOff()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNoSignal()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataServiceState()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private isReachToDataLimit()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 6

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v4, "persist.sys.dataprefer.simid"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v4, "45005"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "oversea"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    return v4

    :cond_0
    const-string v4, "gsm.operator.isroaming_1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method private sendIntentForNetworkErrorPopup(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mPopupExist:Z

    if-ne v2, v4, :cond_0

    const-string v2, "NetworkStateHandler"

    const-string v3, "sendIntentForNetworkErrorPopup: handleNetworkError popup is alreay open"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.popupNetworkError"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "network_err_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    const-string v2, "mobile_data_only"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->setPopupExist(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NetworkStateHandler"

    const-string v3, "ActivityNotFoundException, No Activity found for - com.sec.android.app.popupuireceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->setPopupExist(Z)V

    goto :goto_0

    :cond_1
    const-string v2, "mobile_data_only"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static setLocalProxy(Landroid/content/Context;)Z
    .locals 15

    const/4 v12, 0x0

    const/4 v11, 0x1

    sget-boolean v10, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->bNeedToCheckCustomProxy:Z

    if-nez v10, :cond_0

    move v11, v12

    :goto_0
    return v11

    :cond_0
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v3, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v11

    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v11

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    move v1, v11

    :goto_3
    const-string v10, "NetworkStateHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setLocalProxy mobile("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") wifi("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") bluetooth("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_9

    if-nez v8, :cond_9

    if-nez v1, :cond_9

    sget-object v10, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "CMCC"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultapn()Ljava/lang/String;

    move-result-object v4

    const-string v10, "gsm.sim.operator.numeric"

    const-string v13, ""

    invoke-static {v10, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v10, "46000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "46002"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "46007"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "460078"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "45001"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_1
    if-eqz v4, :cond_9

    const-string v10, "cmwap"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "NetworkStateHandler"

    const-string v12, "setLocalProxy CMCC"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "45001"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v10

    const-string v12, "10.200.60.15:3128"

    invoke-virtual {v10, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v5, v12

    goto/16 :goto_1

    :cond_3
    move v8, v12

    goto/16 :goto_2

    :cond_4
    move v1, v12

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v10

    const-string v12, "10.0.0.172:80"

    invoke-virtual {v10, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v10, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "MetroPCS"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "NetworkStateHandler"

    const-string v12, "setLocalProxy MetroPCS"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v10

    const-string v12, "proxy.metropcs.net:3128"

    invoke-virtual {v10, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v10, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "Cricket"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "NetworkStateHandler"

    const-string v12, "setLocalProxy Cricket"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v10

    const-string v12, "wap.mycricket.com:8080"

    invoke-virtual {v10, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v10, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "CSPire"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "NetworkStateHandler"

    const-string v12, "setLocalProxy CSpire"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v10

    const-string v12, "66.175.144.90:8080"

    invoke-virtual {v10, v12}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    move v11, v12

    goto/16 :goto_0
.end method

.method private showDialogWifiSetting()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    const-string v1, "NetworkStateHandler"

    const-string v2, "showDialogSelectMessage: mAlertDialog is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c02ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->CHINA:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c02f1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c007c

    new-instance v3, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0032

    new-instance v3, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$3;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$2;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    const v1, 0x7f0c02f0

    goto :goto_1
.end method

.method public static startNetwork(Landroid/content/Context;I)V
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultapn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "cmwap"

    :cond_0
    const-string v7, "NetworkStateHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBrowserApn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.com.browser.apn"

    invoke-static {v7, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v10, :cond_3

    const-string v7, "NetworkStateHandler"

    const-string v8, " : wlan on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    const-string v7, "cmwap"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "46002"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "46007"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "460078"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "45001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_4
    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    const/4 v7, 0x0

    const-string v8, "enableWAP"

    invoke-virtual {v1, v7, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v5

    if-eq v5, v10, :cond_5

    const-string v7, "NetworkStateHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sResult(oPS) = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v7, 0x12c

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->threadSleepTime(I)V

    const-string v7, "NetworkStateHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " result(oPS) is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static threadSleepTime(I)V
    .locals 3

    const/16 v1, 0xbb8

    if-le p0, v1, :cond_0

    const/16 p0, 0xbb8

    :cond_0
    int-to-long v1, p0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetworkStateHandler"

    const-string v2, "sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleNetworkError()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isFlightMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: NETWORK_ERROR_FLIGHT_MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->sendIntentForNetworkErrorPopup(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isMobileDataOff()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: NETWORK_ERROR_MOBILE_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->sendIntentForNetworkErrorPopup(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isDataRoamingOff()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: NETWORK_ERROR_DATA_ROAMING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->sendIntentForNetworkErrorPopup(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isReachToDataLimit()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: NETWORK_ERROR_DATA_LIMIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->sendIntentForNetworkErrorPopup(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isDataBlockedDuringCall()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: NETWORK_ERROR_DATA_BLOCKED_DURING_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->sendIntentForNetworkErrorPopup(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->isNoSignal()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: NETWORK_ERROR_NO_SIGNAL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->showDialogWifiSetting()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->sendIntentForNetworkErrorPopup(I)V

    goto :goto_0

    :cond_8
    const-string v2, "NetworkStateHandler"

    const-string v3, "handleNetworkError: Unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onResume()V
    .locals 2

    const-string v0, "CMCC"

    const-string v1, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v1}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->startNetwork(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setPopupExist(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mPopupExist:Z

    return-void
.end method
