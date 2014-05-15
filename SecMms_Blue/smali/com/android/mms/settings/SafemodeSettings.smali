.class public Lcom/android/mms/settings/SafemodeSettings;
.super Landroid/preference/PreferenceActivity;
.source "SafemodeSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SafemodeSettings"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateSafemodeSettings()V
    .locals 6

    iget-object v4, p0, Lcom/android/mms/settings/SafemodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_manage_access_authority"

    invoke-virtual {p0, v4}, Lcom/android/mms/settings/SafemodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v4, "pref_key_urllink_option_enable"

    invoke-virtual {p0, v4}, Lcom/android/mms/settings/SafemodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/settings/SafemodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAcessOption(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v4, 0x7f0c04db

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v4, "pref_key_urllink_option_enable"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const v4, 0x7f0c04dc

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/settings/SafemodeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/settings/SafemodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/settings/SafemodeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v3, 0x7f060016

    invoke-virtual {p0, v3}, Lcom/android/mms/settings/SafemodeSettings;->addPreferencesFromResource(I)V

    const-string v3, "pref_key_urllink_option_enable"

    invoke-virtual {p0, v3}, Lcom/android/mms/settings/SafemodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c04b8

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitleDescription(I)V

    const-string v3, "pref_manage_access_authority"

    invoke-virtual {p0, v3}, Lcom/android/mms/settings/SafemodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0c047d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitleDescription(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/settings/SafemodeSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "pref_manage_access_authority"

    invoke-virtual {p0, v0}, Lcom/android/mms/settings/SafemodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/smishing/PackageAuthorityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/settings/SafemodeSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/SafemodeSettings;->updateSafemodeSettings()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/mms/settings/SafemodeSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v8, "URLinkCall"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v8, "URL_LINK_SETTING"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "pref_key_urllink_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/settings/SafemodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/settings/SafemodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/settings/SafemodeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setSelection(I)V

    const-string v8, "URLinkCall"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
