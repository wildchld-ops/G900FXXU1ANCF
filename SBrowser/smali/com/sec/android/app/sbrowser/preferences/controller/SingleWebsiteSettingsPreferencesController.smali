.class public Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "SingleWebsiteSettingsPreferencesController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mSite:Lcom/sec/android/app/sbrowser/preferences/Website;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->popBackIfNoSettings()V

    return-void
.end method

.method private popBackIfNoSettings()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, "site_title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    check-cast v3, Lcom/sec/android/app/sbrowser/preferences/SingleWebsiteSettingsPreferences;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "com.android.chrome.preferences.site"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/preferences/Website;

    iput-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v11, 0x7f06001a

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_7

    invoke-interface {v7, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    const-string v10, "site_title"

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/preferences/Website;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "clear_data"

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/preferences/Website;->getTotalUsage()J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-lez v10, :cond_2

    invoke-virtual {v8}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0c00f7

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v5, v6}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->sizeValueToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast v8, Lcom/sec/android/app/sbrowser/preferences/ClearWebsiteStorage;

    invoke-virtual {v8, p0}, Lcom/sec/android/app/sbrowser/preferences/ClearWebsiteStorage;->setConfirmationListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    const-string v10, "location_access"

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/preferences/Website;->isGeolocationAccessAllowed()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_5
    const-string v10, "popup_permission"

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/preferences/Website;->isPopupExceptionAllowed()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/Website;->clearAllStoredData(Lcom/sec/android/app/sbrowser/preferences/Website$StoredDataClearedCallback;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "location_access"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/Website;->setGeolocationInfoAllowed(Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/preferences/Website;->setGeolocationInfoAllowed(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string v0, "popup_permission"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/preferences/Website;->setPopupExceptionInfoAllowed(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SingleWebsiteSettingsPreferencesController;->mSite:Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/preferences/Website;->setPopupExceptionInfoAllowed(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
