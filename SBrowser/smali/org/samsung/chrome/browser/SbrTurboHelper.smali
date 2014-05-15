.class public Lorg/samsung/chrome/browser/SbrTurboHelper;
.super Ljava/lang/Object;
.source "SbrTurboHelper.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "turbo"
.end annotation


# static fields
.field static final BRAND_NAME:Ljava/lang/String; = "Samsung"

.field static final DATA_COMPRESSION_CHECK:Ljava/lang/String; = "data_compression_check"

.field static final IMAGE_QUALITY_VALUE:Ljava/lang/String; = "image_quality_value"

.field static final PLATFORM_NAME:Ljava/lang/String; = "Android"

.field static final PREF_DATA_COMPRESSION_COMPRESSED_SIZE:Ljava/lang/String; = "data_compression_compressed_size"

.field static final PREF_DATA_COMPRESSION_ORIGINAL_SIZE:Ljava/lang/String; = "data_compression_original_size"

.field static final PRODUCT_NAME:Ljava/lang/String; = "SBrowser"

.field static final TAG:Ljava/lang/String; = "SbrTurboHelper"

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnTurboStatistics(II)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->updateTurboData(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SbrTurboHelper"

    const-string v2, "OnTurboStatistics() Unable to update turbo data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getBrandName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "Samsung"

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "Unknown"

    return-object v0
.end method

.method public static getOtherProxyUsed()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->update()V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->isCustomProxyUsed()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "SbrTurboHelper"

    const-string v4, "Custom Proxy is used"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v2, "SbrTurboHelper"

    const-string v4, "Systme Proxy is used"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "Android"

    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SBrowser"

    return-object v0
.end method

.method public static getTurboEnabled()Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lorg/samsung/chrome/browser/SbrTurboHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lorg/samsung/chrome/browser/SbrTurboHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v1, Lorg/samsung/chrome/browser/SbrTurboHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "data_compression_check"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getTurboImageQuality()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SbrTurboHelper"

    const-string v1, "getTurboImageQuality() can\'t get the context. use 3 as default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/samsung/chrome/browser/SbrTurboHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/samsung/chrome/browser/SbrTurboHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v0, Lorg/samsung/chrome/browser/SbrTurboHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "image_quality_value"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UnKnown"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
