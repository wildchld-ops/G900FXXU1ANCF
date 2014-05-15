.class public Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "AutoFillSettingsPreferencesModel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AutoFillSettingsPreferencesModel"


# instance fields
.field private mPersonalDataManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->getInstance()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->mPersonalDataManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    return-void
.end method


# virtual methods
.method public getPersonalDataManager()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AutoFillSettingsPreferencesModel;->mPersonalDataManager:Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    return-object v0
.end method

.method public isAutofillEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->isAutofillEnabled()Z

    move-result v0

    return v0
.end method

.method public setAutoFillEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAutoFillEnabled(Z)V

    return-void
.end method
