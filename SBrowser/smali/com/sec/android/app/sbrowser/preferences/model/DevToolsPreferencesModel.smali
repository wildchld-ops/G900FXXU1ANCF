.class public Lcom/sec/android/app/sbrowser/preferences/model/DevToolsPreferencesModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "DevToolsPreferencesModel.java"


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public setRemoteDebuggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setRemoteDebuggingEnabled(Z)V

    return-void
.end method
