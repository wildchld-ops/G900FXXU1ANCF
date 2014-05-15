.class public Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "DebugPreferencesController.java"


# static fields
.field private static final REMOVE_FONT_BOOSTING_FLAG:Z = false

.field private static final TAG:Ljava/lang/String; = "DebugPreferencesController"


# instance fields
.field kikinPref:Landroid/preference/CheckBoxPreference;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    return-void
.end method

.method private getFrameRate(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0700ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0700cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 28

    invoke-super/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const v27, 0x7f060009

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "user_agent"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "reset_prelogin"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "autohide_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "autohide_enabled_engine"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "remote_debug_enabled_engine"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "edgeglow_enabled_engine"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "enable_double_tap_patent"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "placeholder_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "smallwindow_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "uicompositor_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "parallel_canvas_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "tab_manager_perspective_ux_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "tab_manager_single_activity_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "tab_manager_compress_bitmaps_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "session_cache_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "popup_zoomer_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "power_saving_enable"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "data_compression_enable"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "kikin_enabled"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->kikinPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->kikinPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "enable_reader"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/kikin/KikinGlobal;->isForceDisabled(Landroid/content/Context;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/kikin/KikinGlobal;->isSystemDisabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v8, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->kikinPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->kikinPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "frame_rate"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    move-object/from16 v26, v0

    const-string v27, "top_most_scroll_handle"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "enable_hardware_opengl"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    :cond_1
    const-string v5, "enable_hardware_accel_skia"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v5, "user_agent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v5, "enable_webgl"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v5, "enable_visual_indicator"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v5, "enable_cpu_upload_path"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v5, "javascript_console"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string v5, "small_screen"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    const-string v5, "wide_viewport"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    const-string v5, "normal_layout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    const-string v5, "enable_tracing"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "enable_light_touch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "enable_nav_dump"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string v5, "js_engine_flags"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string v5, "kikin_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/kikin/KikinGlobal;->isForceDisabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/kikin/KikinGlobal;->isSystemDisabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v6, "DebugPreferencesController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kikin has been turned "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_f

    const-string v5, "on"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " using the run-time debug switch."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setKikinEnabled(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v5, "off"

    goto :goto_1

    :cond_10
    const-string v5, "DebugPreferencesController"

    const-string v6, "WARNING: Attempt to set the kikin debug flag when kikin is unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DebugPreferencesController"

    const-string v6, "The run-time kikin debug flag must be disabled or removed when kikin is unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->kikinPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setKikinEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->kikinPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_11
    const-string v5, "enable_reader"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    const-string v5, "reset_prelogin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    const-string v5, "enable_blockzoom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    const-string v5, "autohide_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    const-string v5, "autohide_enabled_engine"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    const-string v5, "remote_debug_enabled_engine"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    const-string v5, "edgeglow_enabled_engine"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    const-string v5, "enable_double_tap_patent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    const-string v5, "placeholder_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    const-string v5, "tabswipe_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    const-string v5, "multitab_dragdrop_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1c
    const-string v5, "smallwindow_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    const-string v5, "uicompositor_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1e
    const-string v5, "parallel_canvas_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    const-string v5, "tab_manager_perspective_ux_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_20
    const-string v5, "tab_manager_single_activity_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    const-string v5, "tab_manager_compress_bitmaps_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_22
    const-string v5, "session_cache_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "DebugPreferencesController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session cache setting change : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_23
    const-string v5, "popup_zoomer_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_24
    const-string v5, "power_saving_enable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_25
    const-string v5, "data_compression_enable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_26
    const-string v5, "frame_rate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object v3, p1

    check-cast v3, Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setFrameRate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const-string v5, "top_most_scroll_handle"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DebugPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/preferences/model/DebugPreferencesModel;->setSmoothAnimationEnable(Z)V

    goto/16 :goto_0
.end method
