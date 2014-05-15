.class public Lcom/android/settings/ApplicationsSettingsVZW;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationsSettingsVZW.java"


# instance fields
.field private mInternet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettingsVZW;->addPreferencesFromResource(I)V

    const-string v0, "browser_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettingsVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettingsVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
