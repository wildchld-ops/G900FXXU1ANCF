.class public Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "PrivacyPreferencesModel.java"


# instance fields
.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSettingsContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getExecutablePathValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfilePathValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncAccountName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutologinEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isAutologinEnabled()Z

    move-result v0

    return v0
.end method

.method public isNetworkPredictionEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isNetworkPredictionEnabled()Z

    move-result v0

    return v0
.end method

.method public isRememberFormDataEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isRememberFormDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isRememberPasswordsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isRememberPasswordsEnabled()Z

    move-result v0

    return v0
.end method

.method public isResolveNavigationErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isResolveNavigationErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isSearchSuggestEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isSearchSuggestEnabled()Z

    move-result v0

    return v0
.end method

.method public isSyncBookmarksEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSyncEverythingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSyncSessionEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSyncTypedUrlsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAutologinEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAutologinEnabled(Z)V

    return-void
.end method

.method public setNetworkPredictionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setNetworkPredictionEnabled(Z)V

    return-void
.end method

.method public setRememberFormDataEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setRememberFormDataEnabled(Z)V

    return-void
.end method

.method public setRememberPasswordsEnabled(ZLcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1, p2}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setRememberPasswordsEnabled(ZLcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    return-void
.end method

.method public setResolveNavigationErrorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setResolveNavigationErrorEnabled(Z)V

    return-void
.end method

.method public setSearchSuggestEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchSuggestEnabled(Z)V

    return-void
.end method

.method public setSyncSuppressStart(Z)V
    .locals 0

    return-void
.end method

.method public syncSetupCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public syncSuppressStart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
