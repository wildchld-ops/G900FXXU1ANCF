.class public Lcom/android/settings/myprofile/ClockWidgetPreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ClockWidgetPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field context:Landroid/content/Context;

.field isFromUnlock:Z

.field private mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mRadioboxPref:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/myprofile/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/ClockWidgetPreference;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/ClockWidgetPreference;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/ClockWidgetPreference;->addPreferencesFromResource(I)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-boolean v2, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    const-string v1, "direct_lockscren"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    iget-boolean v1, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.stop.app-in-app"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v5, "dualclock_settings"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "oversea"

    const-string v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f091085

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0916d0

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/myprofile/ClockWidgetPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/myprofile/ClockWidgetPreference$2;-><init>(Lcom/android/settings/myprofile/ClockWidgetPreference;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return v4

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_date_and_year"

    iget-object v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    :goto_0
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    instance-of v8, p2, Lcom/android/settings/myprofile/RadioButtonPreference;

    if-eqz v8, :cond_9

    move-object v6, p2

    check-cast v6, Lcom/android/settings/myprofile/RadioButtonPreference;

    invoke-virtual {v6}, Lcom/android/settings/myprofile/RadioButtonPreference;->getPosition()I

    move-result v5

    invoke-virtual {v6}, Lcom/android/settings/myprofile/RadioButtonPreference;->getValue()I

    move-result v7

    invoke-virtual {v6, v9}, Lcom/android/settings/myprofile/RadioButtonPreference;->setChecked(Z)V

    const/4 v0, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    if-eq v0, v5, :cond_1

    iget-object v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/myprofile/RadioButtonPreference;

    invoke-virtual {v8, v10}, Lcom/android/settings/myprofile/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v8, v10

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f0901db

    invoke-static {v8}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v11, "dialog"

    invoke-virtual {v4, v8, v11}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "oversea"

    const-string v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v8, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f091085

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0916d0

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v11, Lcom/android/settings/myprofile/ClockWidgetPreference$1;

    invoke-direct {v11, p0}, Lcom/android/settings/myprofile/ClockWidgetPreference$1;-><init>(Lcom/android/settings/myprofile/ClockWidgetPreference;)V

    invoke-virtual {v3, v8, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_3
    return v9

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v8, Landroid/content/ComponentName;

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.Settings$DualClockSettingActivity"

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-boolean v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    if-eqz v8, :cond_6

    const-string v8, "direct_lockscren"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/ClockWidgetPreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    iget v8, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mSelection:I

    if-eq v8, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_clock_size"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    iput v5, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mSelection:I

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_3
.end method

.method public onResume()V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "dualclock_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/myprofile/ClockWidgetPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "dualclock_menu_settings"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    const-string v6, "clock_size_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/myprofile/ClockWidgetPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "lock_screen_clock_size"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const v6, 0x7f0a000d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0a000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_4

    new-instance v2, Lcom/android/settings/myprofile/RadioButtonPreference;

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->context:Landroid/content/Context;

    aget-object v9, v5, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v6, v9, v1}, Lcom/android/settings/myprofile/RadioButtonPreference;-><init>(Landroid/content/Context;II)V

    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v0, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v2, v6}, Lcom/android/settings/myprofile/RadioButtonPreference;->setChecked(Z)V

    aget-object v6, v3, v1

    invoke-virtual {v2, v6}, Lcom/android/settings/myprofile/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/settings/myprofile/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    iput v1, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mSelection:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    const-string v6, "lock_screen_date_and_year"

    invoke-virtual {p0, v6}, Lcom/android/settings/myprofile/ClockWidgetPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockWidgetPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_date_and_year"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    const-string v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/myprofile/ClockWidgetPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/myprofile/ClockWidgetPreference;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    return-void

    :cond_6
    move v7, v8

    goto :goto_3
.end method
