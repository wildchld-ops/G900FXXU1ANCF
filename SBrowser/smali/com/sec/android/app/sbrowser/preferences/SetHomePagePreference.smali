.class public Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;
.super Landroid/preference/PreferenceFragment;
.source "SetHomePagePreference.java"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static setCurrentPage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->setCurrentPage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    check-cast v0, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/SetHomePagePreferenceController;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SetHomePagePreference;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    return-void
.end method
