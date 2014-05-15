.class public Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AccountPreferences.java"


# static fields
.field public static final CHECK_VALIDATION_BEFORE_ACCOUNT_SETTINGS:I = 0x7d1


# instance fields
.field private mAct:Landroid/app/Activity;

.field private mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mAct:Landroid/app/Activity;

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mAct:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-class v3, Landroid/view/ViewConfiguration;

    const-string v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyOptionsMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    check-cast v2, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccountPreferencesController;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a034f
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/AccountPreferences;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onStop()V

    :cond_0
    return-void
.end method
