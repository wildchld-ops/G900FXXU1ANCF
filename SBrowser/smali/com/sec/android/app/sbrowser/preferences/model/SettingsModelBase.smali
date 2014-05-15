.class public abstract Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.super Ljava/lang/Object;
.source "SettingsModelBase.java"


# instance fields
.field protected mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

.field protected mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    :cond_1
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isXLarge()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    return v0
.end method

.method public setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method
