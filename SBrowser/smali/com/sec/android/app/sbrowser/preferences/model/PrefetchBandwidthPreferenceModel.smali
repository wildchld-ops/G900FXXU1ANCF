.class public Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;
.super Ljava/lang/Object;
.source "PrefetchBandwidthPreferenceModel.java"


# instance fields
.field private mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

.field private mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public checkAllowPrefetch()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->checkAllowPrefetch()Z

    move-result v0

    return v0
.end method

.method public getPrefBandwidthPreference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getPrefBandwidthPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferenceEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public setBandwidthConservationOption(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->mSbrChromeNativePref:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBandwidthConservationOption(I)V

    return-void
.end method
