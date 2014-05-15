.class public Lcom/sec/android/app/sbrowser/preferences/model/PrivacySecurityPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "PrivacySecurityPreferencesModel.java"


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
.method public SetProxyServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->SetProxyServer(Ljava/lang/String;)V

    return-void
.end method

.method public clearWebNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearWebNotification()V

    return-void
.end method

.method public getCurrentCacheSize(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getCurrentCacheSize(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V

    return-void
.end method

.method public getCurrentCookieCount(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getCurrentCookieCount(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V

    return-void
.end method

.method public getDefaultCountryCodeAtInstall()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getDefaultCountryCodeAtInstall()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultapn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultapn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaviconURLForCurrentSearchEngine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getFaviconURLForCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaviconURLForSearchEngine(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getFaviconURLForSearchEngine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRunFlowComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getFirstRunFlowComplete()Z

    move-result v0

    return v0
.end method

.method public getLocalizedSearchEngines()[Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getLocalizedSearchEngines()[Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getNameForCurrentSearchEngine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getNameForCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPDPParam()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getPDPParam()I

    move-result v0

    return v0
.end method

.method public getPopupExceptions()[Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getPopupExceptions()[Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getPrefSearchEnginePreference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getPrefSearchEnginePreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngine()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getSearchEngine()I

    move-result v0

    return v0
.end method

.method public getUAString()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getUAString()I

    move-result v0

    return v0
.end method

.method public getURLForSeachEngine(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getURLForSeachEngine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseWideViewport()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getUseWideViewport()Z

    move-result v0

    return v0
.end method

.method public getWebNotificationType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getWebNotificationType()I

    move-result v0

    return v0
.end method

.method public isAcceptCookiesEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isAcceptCookiesEnabled()Z

    move-result v0

    return v0
.end method

.method public isAllowLocationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isAllowLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isDownloadInternalMemory()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isDownloadInternalMemory()Z

    move-result v0

    return v0
.end method

.method public javaScriptEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->javaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public onGetCurrentCacheSize(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->onGetCurrentCacheSize(Ljava/lang/String;)V

    return-void
.end method

.method public onGetCurrentCookieCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->onGetCurrentCookieCount(I)V

    return-void
.end method

.method public popupsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->popupsEnabled()Z

    move-result v0

    return v0
.end method

.method public removePopupException(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->removePopupException(Ljava/lang/String;)V

    return-void
.end method

.method public resetPreferenceData(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resetPreferenceData(Z)V

    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 0

    return-void
.end method

.method public setAllowCookiesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowCookiesEnabled(Z)V

    return-void
.end method

.method public setAllowLocationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowLocationEnabled(Z)V

    return-void
.end method

.method public setAllowPopupsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowPopupsEnabled(Z)V

    return-void
.end method

.method public setDefaultCountryCodeAtInstall(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setDefaultCountryCodeAtInstall(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadDefaultStorage(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    return-void
.end method

.method public setImideoDebugMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setImideoDebugMode(I)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setOverviewMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setOverviewMode(Z)V

    return-void
.end method

.method public setPDPParam(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setPDPParam(I)V

    return-void
.end method

.method public setPopupException(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1, p2}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setPopupException(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSavePageDirectory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSavePageDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchEngine(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngine(I)V

    return-void
.end method

.method public setSearchEngine(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSearchEngine(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchEngine(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSearchEngine(Ljava/util/HashMap;)V

    return-void
.end method

.method public setSearchEngineEx(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngineEx(Ljava/util/HashMap;)V

    return-void
.end method

.method public setSharedPreferenceValueFromNativeForSearchEngine()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSharedPreferenceValueFromNativeForSearchEngine()V

    return-void
.end method

.method public setUAString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setUAString(Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgentForDebugging(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setWebNotificationType(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setWebNotificationType(I)V

    return-void
.end method

.method public updateSearchEngineFromNative()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->updateSearchEngineFromNative()V

    return-void
.end method

.method public userAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->userAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
