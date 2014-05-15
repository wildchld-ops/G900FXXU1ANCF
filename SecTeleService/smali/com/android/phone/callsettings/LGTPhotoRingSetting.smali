.class public Lcom/android/phone/callsettings/LGTPhotoRingSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "LGTPhotoRingSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPhotoringRejectAll:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->addPreferencesFromResource(I)V

    const-string v0, "lgu_photoring_block_all_pref"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "photoring_reject_all"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "photoring_reject_all"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingSetting;->mPhotoringRejectAll:Landroid/preference/SwitchPreference;

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
