.class public Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;
.super Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;
.source "AccessibilityPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController$Text_ENCODE;
    }
.end annotation


# static fields
.field public static final FONT_SCALE_MULTIPLIER:F = 1.05f


# instance fields
.field arrayOfString1:[Ljava/lang/String;

.field private e:Landroid/preference/Preference;

.field mFormat:Ljava/text/NumberFormat;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

.field private sharedprefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;-><init>(Landroid/preference/PreferenceFragment;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    return-void
.end method

.method public static getFontScaleMultiplier(Landroid/content/Context;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f07009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f07009b

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
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mFormat:Ljava/text/NumberFormat;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.app.sbrowser_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "text_scale"

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "force_enable_zoom"

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "fullscreen"

    aput-object v2, v1, v4

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "text_scale"

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "force_enable_zoom"

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "fontboosting_mode"

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    const-string v2, "fullscreen"

    aput-object v2, v1, v6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v2, "default_text_encoding"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->e:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->e:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->e:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "default_text_encoding"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->getTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "AutoDetect"

    const-string v2, "Autodetect-OnAutoDetect"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setUsesEncodingDetector(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v3, "text_scale"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->updateTextScaleSummary(Landroid/preference/Preference;F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "fullscreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_3
    const-string v3, "auto_hide_toolbar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "force_enable_zoom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v3, "fontboosting_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v3, "default_text_encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->getTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "Latin-1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Latin-1(ISO-8859-1)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    const-string v3, "UTF-8"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Unicode(UTF-8)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    const-string v3, "GBK"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "GBK"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Chinese(GBK)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    const-string v3, "Big5"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "Big5"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Chinese(Big5)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9
    const-string v3, "ISO-2022-JP"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "ISO-2022-JP"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Japanise(ISO-2022-JP)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    const-string v3, "SHIFT_JIS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "SHIFT_JIS"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Japanise(SHIFT-JIS)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    const-string v3, "EUC-JP"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "EUC-JP"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Japanise(EUC-JP)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c
    const-string v3, "EUC-KR"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const-string v4, "EUC-KR"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setTextEncoding(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Korean(EUC-KR)"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    const-string v3, "AutoDetect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/preferences/model/AccessibilityPreferencesModel;->setUsesEncodingDetector(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "laguage_selected"

    const-string v5, "Auto detect"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 10

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v6, "text_scale"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;

    move-object v3, v5

    check-cast v3, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0046

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v6, "text_scale"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    const-string v6, "text_scale"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "text_scale"

    const/high16 v8, 0x3f80

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->updateTextScaleSummary(Landroid/preference/Preference;F)V

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "auto_hide_toolbar"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "fullscreen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v6, "fullscreen"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    const-string v5, "fontboosting_mode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v6, "fontboosting_mode"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const-string v5, "force_enable_zoom"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->arrayOfString1:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->sharedprefs:Landroid/content/SharedPreferences;

    const-string v6, "force_enable_zoom"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method updateListPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateTextScaleSummary(Landroid/preference/Preference;F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/AccessibilityPreferencesController;->mFormat:Ljava/text/NumberFormat;

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
