.class public Lcom/sec/android/app/sbrowser/preferences/SingleWebsiteSettingsPreferences;
.super Landroid/preference/PreferenceFragment;
.source "SingleWebsiteSettingsPreferences.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SingleWebsiteSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SingleWebsiteSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SingleWebsiteSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    check-cast v1, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    return v0
.end method
