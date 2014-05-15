.class public Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "DataCompressionPreferencesModel.java"


# instance fields
.field protected mContext:Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->mContext:Landroid/preference/PreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setSbrowserSettings()V

    return-void
.end method


# virtual methods
.method public getDataCompressionCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setSbrowserSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionCheck()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageQualityvalue()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setSbrowserSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getImageQualityvalue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataCompressionCheck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setSbrowserSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setDataCompressionCheck(Z)V

    :cond_1
    return-void
.end method

.method public setImageQualityvalue(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setSbrowserSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setImageQualityvalue(I)V

    :cond_1
    return-void
.end method

.method public final setSbrowserSettings()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->mContext:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->mContext:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    :cond_0
    return-void
.end method

.method public updateTurboData(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setSbrowserSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->updateTurboData(II)V

    :cond_1
    return-void
.end method
