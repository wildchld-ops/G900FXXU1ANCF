.class public interface abstract Lcom/sec/android/app/sbrowser/preferences/controller/ISettingsController;
.super Ljava/lang/Object;
.source "ISettingsController.java"


# virtual methods
.method public abstract SetProxyServer(Ljava/lang/String;)V
.end method

.method public abstract allowPrefetch()Z
.end method

.method public abstract changeViewStyle(Landroid/view/View;Landroid/content/Context;)V
.end method

.method public abstract checkAllowPrefetch()Z
.end method

.method public abstract clearWebNotification()V
.end method

.method public abstract deleteAllAutofillPersonalData()V
.end method

.method public abstract deleteAutofillCreditCard(Ljava/lang/String;)V
.end method

.method public abstract deleteAutofillProfile(Ljava/lang/String;)V
.end method

.method public abstract getAboutVersionStrings()Ljava/util/HashMap;
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
.end method

.method public abstract getAutoBrightness()Z
.end method

.method public abstract getAutofillCreditCard(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutofillCreditCardGUIDs()[Ljava/lang/String;
.end method

.method public abstract getAutofillProfile(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutofillProfileGUIDs()[Ljava/lang/String;
.end method

.method public abstract getBandwidthConservationOption()I
.end method

.method public abstract getBrightness()I
.end method

.method public abstract getCurrentCacheSize(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
.end method

.method public abstract getCurrentCookieCount(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
.end method

.method public abstract getDefaultCountryCodeAtInstall()Ljava/lang/String;
.end method

.method public abstract getDefaultHomepage()Ljava/lang/String;
.end method

.method public abstract getDefaultPageCheck()Z
.end method

.method public abstract getDefaultapn()Ljava/lang/String;
.end method

.method public abstract getDoNotShowIncognitoCheck()Z
.end method

.method public abstract getExecutablePathValue()Ljava/lang/String;
.end method

.method public abstract getFaviconURLForCurrentSearchEngine()Ljava/lang/String;
.end method

.method public abstract getFaviconURLForSearchEngine(I)Ljava/lang/String;
.end method

.method public abstract getFirstRunFlowComplete()Z
.end method

.method public abstract getFontScaleFactor()F
.end method

.method public abstract getForceEnableZoom()Z
.end method

.method public abstract getHomePage()Ljava/lang/String;
.end method

.method public abstract getHomePagePicker()Ljava/lang/String;
.end method

.method public abstract getLocalizedSearchEngines()[Ljava/util/HashMap;
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
.end method

.method public abstract getMinimumFontSize()I
.end method

.method public abstract getNameForCurrentSearchEngine()Ljava/lang/String;
.end method

.method public abstract getPDPParam()I
.end method

.method public abstract getPopupExceptions()[Ljava/util/HashMap;
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
.end method

.method public abstract getPrefBandwidthPreference()Ljava/lang/String;
.end method

.method public abstract getPrefLoadImagePreference()Z
.end method

.method public abstract getPrefSearchEnginePreference()Ljava/lang/String;
.end method

.method public abstract getProfilePathValue()Ljava/lang/String;
.end method

.method public abstract getSDCardPath()Ljava/lang/String;
.end method

.method public abstract getSearchEngine()I
.end method

.method public abstract getSyncAccountName()Ljava/lang/String;
.end method

.method public abstract getUAString()I
.end method

.method public abstract getURLForSeachEngine(I)Ljava/lang/String;
.end method

.method public abstract getUseWideViewport()Z
.end method

.method public abstract getWebNotificationType()I
.end method

.method public abstract isAcceptCookiesEnabled()Z
.end method

.method public abstract isAllowLocationEnabled()Z
.end method

.method public abstract isAutofillEnabled()Z
.end method

.method public abstract isAutologinEnabled()Z
.end method

.method public abstract isDownloadInternalMemory()Z
.end method

.method public abstract isNetworkPredictionEnabled()Z
.end method

.method public abstract isRememberFormDataEnabled()Z
.end method

.method public abstract isRememberPasswordsEnabled()Z
.end method

.method public abstract isRemoteDebuggingEnabled()Z
.end method

.method public abstract isResolveNavigationErrorEnabled()Z
.end method

.method public abstract isSearchSuggestEnabled()Z
.end method

.method public abstract isSyncBookmarksEnabled()Z
.end method

.method public abstract isSyncEverythingEnabled()Z
.end method

.method public abstract isSyncSessionEnabled()Z
.end method

.method public abstract isSyncTypedUrlsEnabled()Z
.end method

.method public abstract isWiFiNetwork()Z
.end method

.method public abstract isXLarge()Z
.end method

.method public abstract javaScriptEnabled()Z
.end method

.method public abstract loadsImagesAutomatically()Z
.end method

.method public abstract onGetCurrentCacheSize(Ljava/lang/String;)V
.end method

.method public abstract onGetCurrentCookieCount(I)V
.end method

.method public abstract popupsEnabled()Z
.end method

.method public abstract removePopupException(Ljava/lang/String;)V
.end method

.method public abstract resetPreferenceData(Z)V
.end method

.method public abstract resetToDefaultSettings()V
.end method

.method public abstract setAllowCookiesEnabled(Z)V
.end method

.method public abstract setAllowLocationEnabled(Z)V
.end method

.method public abstract setAllowPopupsEnabled(Z)V
.end method

.method public abstract setAllowPrefetch(Z)V
.end method

.method public abstract setAutoBrightness(Z)V
.end method

.method public abstract setAutoFillEnabled(Z)V
.end method

.method public abstract setAutofillCreditCard(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
.end method

.method public abstract setAutofillProfile(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
.end method

.method public abstract setAutologinEnabled(Z)V
.end method

.method public abstract setBandwidthConservationOption(I)V
.end method

.method public abstract setBrightness(I)V
.end method

.method public abstract setDefaultCountryCodeAtInstall(Ljava/lang/String;)V
.end method

.method public abstract setDefaultPageCheck(Z)V
.end method

.method public abstract setDoNotShowIncognitoCheck(Z)V
.end method

.method public abstract setDownloadDefaultStorage(Landroid/content/Context;I)V
.end method

.method public abstract setFactoryResetHomeUrl(Ljava/lang/String;)V
.end method

.method public abstract setFontBoostingModeEnabled(Z)V
.end method

.method public abstract setFontScaleFactor(F)V
.end method

.method public abstract setForceEnableZoom(Z)V
.end method

.method public abstract setHomePage(Ljava/lang/String;)V
.end method

.method public abstract setHomePagePicker(Ljava/lang/String;)V
.end method

.method public abstract setHomeScreenMode(I)V
.end method

.method public abstract setHomepageByChameleon(Ljava/lang/String;)V
.end method

.method public abstract setJavaScriptEnabled(Z)V
.end method

.method public abstract setLoadsImagesAutomatically(Z)V
.end method

.method public abstract setMinimumFontSize(I)V
.end method

.method public abstract setNetworkPredictionEnabled(Z)V
.end method

.method public abstract setOverviewMode(Z)V
.end method

.method public abstract setOverviewModeEnabled(Z)V
.end method

.method public abstract setPDPParam(I)V
.end method

.method public abstract setPathValuesForAboutChrome()V
.end method

.method public abstract setPopupException(Ljava/lang/String;Z)V
.end method

.method public abstract setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V
.end method

.method public abstract setRememberFormDataEnabled(Z)V
.end method

.method public abstract setRememberPasswordsEnabled(Z)V
.end method

.method public abstract setRemoteDebuggingEnabled(Z)V
.end method

.method public abstract setResolveNavigationErrorEnabled(Z)V
.end method

.method public abstract setSaveFileDirectory(Ljava/lang/String;)V
.end method

.method public abstract setSearchEngine(I)V
.end method

.method public abstract setSearchEngine(Ljava/lang/String;)V
.end method

.method public abstract setSearchEngine(Ljava/util/HashMap;)V
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
.end method

.method public abstract setSearchEngineEx(Ljava/util/HashMap;)V
.end method

.method public abstract setSearchSuggestEnabled(Z)V
.end method

.method public abstract setSharedPreferenceValueFromNative()V
.end method

.method public abstract setSharedPreferenceValueFromNativeForSearchEngine()V
.end method

.method public abstract setSyncSuppressStart(Z)V
.end method

.method public abstract setTextEncoding(Ljava/lang/String;)V
.end method

.method public abstract setUAString(Ljava/lang/String;)V
.end method

.method public abstract setUseWideViewport(Z)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;Z)V
.end method

.method public abstract setUserAgentForDebugging(Ljava/lang/String;Z)V
.end method

.method public abstract setUsesEncodingDetector(Z)V
.end method

.method public abstract setWebNotificationType(I)V
.end method

.method public abstract syncSetupCompleted()Z
.end method

.method public abstract syncSuppressStart()Z
.end method

.method public abstract updateSearchEngineFromNative()V
.end method

.method public abstract useFullscreen()Z
.end method

.method public abstract userAgent()Ljava/lang/String;
.end method
