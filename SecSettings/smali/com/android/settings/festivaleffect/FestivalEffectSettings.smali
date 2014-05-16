.class public Lcom/android/settings/festivaleffect/FestivalEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FestivalEffectSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final KEY_ALLOWED_FUNCTION_CATEGORY:Ljava/lang/String; = "allowed_functions_category"

.field private static final KEY_HELP:Ljava/lang/String; = "festival_effect_help"

.field private static final KEY_HOME_LOCK_SCREEN:Ljava/lang/String; = "home_lock_screen"

.field private static final KEY_NOTIFICATION_PANEL:Ljava/lang/String; = "notification_panel"

.field private static final KEY_WEATHER_WIDGET:Ljava/lang/String; = "weather_widget"

.field private static final TAG:Ljava/lang/String; = "FestivalEffectSettings"


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mHelpPref:Landroid/preference/Preference;

.field private mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    return-void
.end method

.method private broadcastFestivalEffectChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastHomeLockScreenChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.HOME_LOCK_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastNotificationPanelChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isAllAllowedFunctionDisabled()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "festival_effect_home_lock_screen"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "festival_effect_notification_panel"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "festival_effect_weather_widget"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int v5, v0, v1

    if-ge v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070051

    invoke-virtual {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v3, "festival_effect_help"

    invoke-virtual {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    const v5, 0x7f0400aa

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    const-string v3, "home_lock_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "notification_panel"

    invoke-virtual {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "weather_widget"

    invoke-virtual {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "festival_effect_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mSettingValue:I

    if-ne v3, v2, :cond_2

    :goto_0
    const-string v3, "home_lock_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    const-string v3, "notification_panel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "weather_widget"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090ec4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_home_lock_screen"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastHomeLockScreenChanged(Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isAllAllowedFunctionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastFestivalEffectChanged(Z)V

    :cond_1
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_notification_panel"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->broadcastNotificationPanelChanged(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "festival_effect_weather_widget"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iput-boolean v5, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->isGoIntoQuideHub:Z

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "festival_effect_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mHomeLockScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_home_lock_screen"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    :goto_1
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mNotificaitonPanel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_notification_panel"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mWeatherWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "festival_effect_weather_widget"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_1

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
