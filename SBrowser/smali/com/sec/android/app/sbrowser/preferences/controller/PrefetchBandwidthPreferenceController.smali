.class public Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;
.super Ljava/lang/Object;
.source "PrefetchBandwidthPreferenceController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;Landroid/content/Context;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-direct {v2, p2}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->CHINA:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->setEntries(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->setEntryValues(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->getPrefBandwidthPreference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->GetBandwidthFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->getDisplayTitle()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    const v3, 0x7f07007f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->setEntries(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const-string v2, "prefetch_bandwidth"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->GetBandwidthFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->setBandwidthConservationOption(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->getSharedPreferenceEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prefetch_bandwidth"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->GetTypeFromIndex(I)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->getSharedPreferenceEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->checkAllowPrefetch()Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/model/PrefetchBandwidthPreferenceModel;->getPrefBandwidthPreference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->GetBandwidthFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->getDisplayTitle()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mBandwidthPreference:Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrefetchBandwidthPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/preferences/PrefetchBandwidthPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
