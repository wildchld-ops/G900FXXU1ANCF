.class public Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;
.super Ljava/lang/Object;
.source "SettingsModel.java"


# instance fields
.field protected mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

.field protected mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getChromeNativePreferences()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    return-object v0
.end method

.method public getSbrowserSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-object v0
.end method

.method public isXLarge()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    return v0
.end method

.method public setSharedPreferenceValueFromNative()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSharedPreferenceValueFromNative()V

    return-void
.end method

.method public useFullscreen(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    return v0
.end method
