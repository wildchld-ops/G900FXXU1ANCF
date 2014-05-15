.class public Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "PrivacyPreferencesController.java"


# instance fields
.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

.field private mPreload_links:Landroid/preference/CheckBoxPreference;

.field private mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

.field private mRemembered_Password:Landroid/preference/CheckBoxPreference;

.field private mUI:Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;

.field private mseach_suggestion:Landroid/preference/CheckBoxPreference;

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field private sharedprefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v8, 0x7f060010

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "com.sec.android.app.sbrowser_preferences"

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->isXLarge()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0115

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    const-string v7, "save_formdata"

    aput-object v7, v1, v9

    const/4 v7, 0x1

    const-string v8, "remember_passwords"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "search_suggestions"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "network_predictions"

    aput-object v8, v1, v7

    move-object v0, v1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v8, "save_formdata"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v8, "remember_passwords"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v8, "search_suggestions"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mseach_suggestion:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v8, "network_predictions"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mPreload_links:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mseach_suggestion:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mseach_suggestion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mPreload_links:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mPreload_links:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v8, "ShowClearBrowsingData"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowClearBrowsingData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mUI:Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/ui/PrivacyPreferenceUI;->showClearBrowsingDataDialog(Landroid/app/FragmentManager;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v1, "save_formdata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->setRememberFormDataEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->setRememberFormDataEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "remember_passwords"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->setRememberPasswordsEnabled(ZLcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->setRememberPasswordsEnabled(ZLcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mseach_suggestion:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "search_suggestions"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "save_formdata"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "remember_passwords"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mPreload_links:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v2, "network_predictions"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Password:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->isRememberPasswordsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mRemembered_Form_Data:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacyPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/PrivacyPreferencesModel;->isRememberFormDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
