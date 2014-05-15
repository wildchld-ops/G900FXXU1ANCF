.class public Lcom/android/phone/KTHDVoiceSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTHDVoiceSetting.java"


# instance fields
.field private fromSettingSearch:Z

.field private mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

.field private mLTENetworkChecked:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KTHDVoiceSetting"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "KTHDVoiceSetting"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/android/phone/KTHDVoiceSetting;->addPreferencesFromResource(I)V

    const-string v1, "kt_hd_voice"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    const-string v1, "kt_hd_voice_lte_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/KTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    const/4 v1, 0x0

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isVoLTESettingEnabled()Z

    move-result v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVolteSupported = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setHDVoiceNetworkPref(Z)V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "hd_voice_network_pref"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "voicecall_type"

    invoke-static {v5, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const-string v5, "interworking_hd_voice_by_intent"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_7

    if-ne v2, v7, :cond_7

    move v3, v6

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "enable"

    if-nez v3, :cond_8

    move v5, v7

    :goto_3
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    :cond_3
    :goto_4
    return v7

    :cond_4
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    if-eqz v4, :cond_6

    move v5, v6

    :goto_5
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v5, v7

    goto :goto_5

    :cond_7
    move v3, v7

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_f

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hd_voice_network_pref"

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v7

    :goto_6
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    :goto_7
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "interworking_hd_voice_by_intent"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_d

    move v3, v6

    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "enable"

    if-nez v3, :cond_e

    move v5, v7

    :goto_9
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_b
    move v5, v6

    goto :goto_6

    :cond_c
    move v5, v8

    goto :goto_7

    :cond_d
    move v3, v7

    goto :goto_8

    :cond_e
    move v5, v6

    goto :goto_9

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 9

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v5, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "voicecall_type"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hd_voice_network_pref"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v4, "common_volte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isVoLTESettingEnabled()Z

    move-result v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVolteSupported = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    if-eqz v4, :cond_4

    sget v4, Lcom/android/phone/KTHDVoiceSetting;->mSettingValue:I

    if-eq v4, v8, :cond_4

    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "kt_hd_voice"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/KTHDVoiceSetting;->mCheckValue:Z

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v6, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    if-eqz v4, :cond_6

    sget v4, Lcom/android/phone/KTHDVoiceSetting;->mSettingValue:I

    if-eq v4, v8, :cond_6

    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v7, "kt_hd_voice_lte_pref"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    sget-boolean v7, Lcom/android/phone/KTHDVoiceSetting;->mCheckValue:Z

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v6, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    :cond_2
    :goto_1
    const-string v4, "KTHDVoiceSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromSettingSearch = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v4, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is called by SettingSearch"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    sput-boolean v5, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v5, "kt_hd_voice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/CheckBoxPreference;

    if-ne v0, v6, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    if-lez v3, :cond_7

    move v4, v6

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v2, :cond_8

    if-eq v0, v6, :cond_8

    move v1, v6

    :goto_5
    iget-object v4, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    move v1, v5

    goto :goto_5

    :cond_9
    sget-object v4, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v5, "kt_hd_voice_lte_pref"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_2
.end method
