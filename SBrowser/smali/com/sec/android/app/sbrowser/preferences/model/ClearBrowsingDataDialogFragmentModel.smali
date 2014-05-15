.class public Lcom/sec/android/app/sbrowser/preferences/model/ClearBrowsingDataDialogFragmentModel;
.super Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;
.source "ClearBrowsingDataDialogFragmentModel.java"


# direct methods
.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;-><init>(Landroid/preference/PreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/SettingsModelBase;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    return-void
.end method
