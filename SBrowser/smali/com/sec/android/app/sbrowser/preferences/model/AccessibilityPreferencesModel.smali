.class public Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "AccessibilityPreferencesModel.java"


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
.method public changeViewStyle(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->changeViewStyle(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public getAutoBrightness()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getAutoBrightness()Z

    move-result v0

    return v0
.end method

.method public getBrightness()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getBrightness()I

    move-result v0

    return v0
.end method

.method public getFontScaleFactor()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getFontScaleFactor()F

    move-result v0

    return v0
.end method

.method public getForceEnableZoom()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getForceEnableZoom()Z

    move-result v0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public isHideURLPrefEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isHideURLPrefEnabled()Z

    move-result v0

    return v0
.end method

.method public setAutoBrightness(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setAutoBrightness(Z)V

    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setBrightness(I)V

    return-void
.end method

.method public setFontScaleFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontScaleFactor(F)V

    return-void
.end method

.method public setForceEnableZoom(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setForceEnableZoom(Z)V

    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setMinimumFontSize(I)V

    return-void
.end method

.method public setTextEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setTextEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setUseWideViewport(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUseWideViewport(Z)V

    return-void
.end method

.method public setUsesEncodingDetector(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUsesEncodingDetector(Z)V

    return-void
.end method

.method public updateHideURLPreferenceValue(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->updateHideURLPreferenceValue(Z)V

    return-void
.end method
