.class public Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "BandwidthPreferencesController.java"


# instance fields
.field private mDataCompression:Landroid/preference/SwitchPreferenceScreen;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const v13, 0x7f060004

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "block_advts"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "animated_gif"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "one_shot_image_decode"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "app_nap"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "filter_bitmap"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "change_bg"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->updateListBgPreferenceSummary(Landroid/preference/ListPreference;)V

    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->isXLarge()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f08000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/Activity;->setTitleColor(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v13, 0x7f0c00d3

    invoke-virtual {v12, v13}, Landroid/app/Activity;->setTitle(I)V

    :cond_1
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "load_images"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "overview_mode"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "data_compression"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsDataCompressionUse()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->getUseDataCompressionPreference()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v12, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->getDataCompressionCheck()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->getOtherProxyUsed()Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    :goto_1
    const-string v12, "CMCC"

    const-string v13, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v13}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "apn_setting"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getPowerSavingModeValue()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "pre_bandwidth_screen"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void

    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    :cond_6
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v13, "pre_bandwidth_screen"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "change_bg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v4, "overview_mode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setOverviewModeEnabled(Z)V

    :cond_1
    :goto_1
    return v6

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "load_images"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setLoadsImagesAutomatically(Z)V

    goto :goto_1

    :cond_4
    const-string v4, "data_compression"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setDataCompressionCheck(Z)V

    goto :goto_1

    :cond_5
    const-string v4, "apn_setting"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "CMCC"

    const-string v5, "CscFeature_Web_EnableMultipleApn4"

    invoke-static {v5}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "cmwap"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "BandwidthPreferences"

    const-string v5, "SetProxyServer cmwap"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v6}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->startNetwork(Landroid/content/Context;I)V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->setLocalProxy(Landroid/content/Context;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.BROWSER_APN_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "apn_setting"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v4, "BandwidthPreferences"

    const-string v5, "SetProxyServer internet"

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->closeNetwork(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string v4, "block_advts"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPrefBlockAdvt(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_8
    const-string v4, "animated_gif"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPrefAnimGif(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_9
    const-string v4, "one_shot_image_decode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPrefOneShotImageDecode(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_a
    const-string v4, "app_nap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPrefAppNap(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "filter_bitmap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPrefFilterBitmap(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_c
    const-string v4, "change_bg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPrefChangeBg(Landroid/preference/Preference;Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Landroid/preference/ListPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->updateListBgPreferenceSummary(Landroid/preference/ListPreference;)V

    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mDataCompression:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/BandwidthPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/BandwidthPreferencesModel;->getDataCompressionCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method updateListBgPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
