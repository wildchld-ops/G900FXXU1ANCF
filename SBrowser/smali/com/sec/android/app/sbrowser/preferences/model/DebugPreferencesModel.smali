.class public Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "DebugPreferencesModel.java"


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public getAboutVersionStrings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getAboutVersionStrings()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public isRemoteDebuggingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetToDefaultSettings()V
    .locals 0

    return-void
.end method

.method public setFontBoostingModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontBoostingModeEnabled(Z)V

    return-void
.end method

.method public setFrameRate(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setFrameRateValue(Ljava/lang/String;)V

    return-void
.end method

.method public setPathValuesForAboutChrome()V
    .locals 0

    return-void
.end method

.method public setSmoothAnimationEnable(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setSmoothAnimationEnable(Z)V

    return-void
.end method
