.class public Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AutoFillSettingsPreferences.java"


# instance fields
.field mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AutoFillSettingsPreferencesController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AutoFillSettingsPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/IFragmentController;->onResume()V

    return-void
.end method
