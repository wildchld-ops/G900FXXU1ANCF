.class public Lorg/chromium/content/common/DeviceTelephonyInfo;
.super Ljava/lang/Object;
.source "DeviceTelephonyInfo.java"


# instance fields
.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/chromium/content/common/DeviceTelephonyInfo;->mTelManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/content/common/DeviceTelephonyInfo;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/common/DeviceTelephonyInfo;

    invoke-direct {v0, p0}, Lorg/chromium/content/common/DeviceTelephonyInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/common/DeviceTelephonyInfo;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
