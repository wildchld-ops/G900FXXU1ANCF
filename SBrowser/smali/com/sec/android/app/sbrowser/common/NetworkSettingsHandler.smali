.class public Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;
.super Ljava/lang/Object;
.source "NetworkSettingsHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "NetworkSettingsHandler"

.field private static mAlertDialog:Landroid/app/AlertDialog;

.field private static mAlertDialogRoaming:Landroid/app/AlertDialog;

.field public static shouldShowRoamingPopup:Z


# instance fields
.field mActivity:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;

.field sbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialogRoaming:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->shouldShowRoamingPopup:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mToast:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->sbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isRoamingPopupNeeded()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->shouldShowRoamingPopup:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->sbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogSelectMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialogRoaming:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private checkUsePackectData()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private dataConnectionEnable()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "NetworkSettingsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataConnectionEnable: in oversea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->getDataOnRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->dataConnectionPreference()Z

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private dataConnectionPreference()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "NetworkSettingsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionPreference(): mDataNetworkEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isBluetoothTetheringEnabled()Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRoamingArea()Ljava/lang/String;
    .locals 6

    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v3, "45005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NetworkSettingsHandler"

    const-string v4, "isRoamingArea(): true SKT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "true"

    :goto_0
    return-object v3

    :cond_0
    const-string v3, "NetworkSettingsHandler"

    const-string v4, "isRoamingArea(): false SKT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "false"

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "NetworkSettingsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingArea(): roaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_2
    const-string v3, "NetworkSettingsHandler"

    const-string v4, "isRoamingArea(): roaming = null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "false"

    goto :goto_1
.end method

.method private isRoamingPopupNeeded()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "CscFeature_Web_EnableRoamingDialog"

    invoke-static {v1}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->getDataOnRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->checkUsePackectData()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUSBTetheringEnabled()Z
    .locals 15

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    move-object v0, v11

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    move-object v1, v7

    array-length v6, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v9, v1, v3

    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    return v12
.end method

.method private isWifiConnected()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    const-string v2, "NetworkSettingsHandler"

    const-string v3, "isWifiConnected() : wm is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWifiEnable(Landroid/content/Context;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v8, v7, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private showDialogPDPResetInRoaming()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialogRoaming:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "NetworkSettingsHandler"

    const-string v1, "showDialogPDPResetInRoaming: mAlertDialogRoaming is NOT null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c01cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003d

    new-instance v2, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$5;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0041

    new-instance v2, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$4;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialogRoaming:Landroid/app/AlertDialog;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialogRoaming:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$6;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialogRoaming:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showDialogSelectMessage()V
    .locals 4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    const-string v1, "NetworkSettingsHandler"

    const-string v2, "showDialogSelectMessage: mAlertDialog is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0190

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c018e

    new-instance v3, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$2;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c018f

    new-instance v3, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$1;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler$3;-><init>(Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public showRoamingNetworkErrorPopup()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->dataConnectionEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "NetworkSettingsHandler"

    const-string v1, "showRoamingNetworkErrorPopup: isAirplaneModeOn is on or dataConnectionEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isRoamingArea()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->sbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getPDPParam()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NetworkSettingsHandler"

    const-string v1, "showRoamingNetworkErrorPopup: showDialogPDPResetInRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogPDPResetInRoaming()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->sbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setPDPParam(I)V

    goto :goto_0

    :cond_2
    const-string v0, "NetworkSettingsHandler"

    const-string v1, "showRoamingNetworkErrorPopup: getPDPParam is not 0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "NetworkSettingsHandler"

    const-string v1, "showRoamingNetworkErrorPopup: Not roaming area"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNetworkSettingInAirplaneMode()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "NetworkSettingsHandler"

    const-string v6, "startNetworkSettingInAirplaneMode: start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    const-string v4, "NetworkSettingsHandler"

    const-string v5, "startNetworkSettingInAirplaneMode() : wm is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v5, "NetworkSettingsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startNetworkSettingInAirplaneMode: WiFi Avail("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") WiFi conn("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const-string v4, "NetworkSettingsHandler"

    const-string v5, "startNetworkSettingInAirplaneMode() : cm is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v5, "NetworkSettingsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startNetworkSettingInAirplaneMode: Data isConnected("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogSelectMessage()V

    move v3, v4

    goto/16 :goto_0

    :cond_4
    const-string v5, "NetworkSettingsHandler"

    const-string v6, "startNetworkSettingInAirplaneMode: info is null. isConnected is false"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->dataConnectionEnable()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "NetworkSettingsHandler"

    const-string v5, "startNetworkSettingInAirplaneMode: Data Avail(enable)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    if-nez v5, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isBluetoothTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->isUSBTetheringEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string v4, "NetworkSettingsHandler"

    const-string v5, "startNetworkSettingInAirplaneMode: BT or USB Tethering is ON"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->showDialogSelectMessage()V

    move v3, v4

    goto/16 :goto_0
.end method

.method public startRoamingSettingActivity()Z
    .locals 5

    const/4 v4, 0x1

    const-string v1, "NetworkSettingsHandler"

    const-string v2, "startRoamingSettingActivity: Roaming area"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->mActivity:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/NetworkSettingsHandler;->shouldShowRoamingPopup:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string v1, "NetworkSettingsHandler"

    const-string v2, "startRoamingSettingActivity: There is no Activity, ROAMING_SETTING"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
