.class public Lcom/sec/android/app/sbrowser/preferences/model/HomePagePreferenceModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "HomePagePreferenceModel.java"


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
.method public getDefaultHomepage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPageCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultPageCheck()Z

    move-result v0

    return v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomePagePicker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePagePicker()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultPageCheck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setDefaultPageCheck(Z)V

    return-void
.end method

.method public setFactoryResetHomeUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setFactoryResetHomeUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    return-void
.end method

.method public setHomePagePicker(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePagePicker(Ljava/lang/String;)V

    return-void
.end method

.method public setHomeScreenMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setHomeScreenMode(I)V

    return-void
.end method

.method public setHomepageByChameleon(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomepageByChameleon(Ljava/lang/String;)V

    return-void
.end method
