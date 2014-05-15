.class public Lcom/android/settings/motion2014/MotionSettings2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings2014.java"


# instance fields
.field private mAirTurnAndScroll:Landroid/preference/Preference;

.field private mCameraQuickAccess:Landroid/preference/Preference;

.field private mMergedMutePause:Landroid/preference/Preference;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mResolver:Landroid/content/ContentResolver;


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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->setHasOptionsMenu(Z)V

    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->addPreferencesFromResource(I)V

    const-string v0, "air_turn_and_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    const-string v0, "pick_up"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    const-string v0, "pick_up_to_call_out"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    const-string v0, "merged_mute_or_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    const-string v0, "palm_swipe"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    const-string v0, "camera_quick_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mCameraQuickAccess:Landroid/preference/Preference;

    const-string v0, "camera_quick_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    const-string v0, "m2alte"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "m2a3g"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "air_turn_and_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2014/MotionSettings2014;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f09134c

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    const v2, 0x7f090930

    const v1, 0x7f09092f

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_merged_mute_pause"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_swipe"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mCameraQuickAccess:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "camera_quick_access"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method
