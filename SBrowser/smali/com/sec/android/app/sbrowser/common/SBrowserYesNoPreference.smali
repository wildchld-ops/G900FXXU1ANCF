.class Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;
.super Landroid/preference/DialogPreference;
.source "SBrowserYesNoPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "privacy_clear_history"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "privacy_clear_cache"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    move v7, v2

    move v8, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "privacy_clear_cookies"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "privacy_clear_passwords"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "privacy_clear_form_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    move v10, v2

    invoke-virtual/range {v4 .. v10}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy_clear_geolocation_access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->clearAllGeolocationAccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy_clear_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearWebNotification()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->resetToDefaultSettings()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resetPreferenceData(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resetInternetSync()V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->sBrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->update(Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/common/SBrowserYesNoPreference;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/preferences/Settings;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/preferences/Settings;->finish()V

    goto/16 :goto_0
.end method
