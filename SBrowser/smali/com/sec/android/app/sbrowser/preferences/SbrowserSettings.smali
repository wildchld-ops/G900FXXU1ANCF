.class public Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
.super Ljava/lang/Object;
.source "SbrowserSettings.java"


# static fields
.field private static mDefaultValueUseDataCompression:Z

.field private static mEnablePowserControl:Z

.field private static mIsAutoHideEnabled:Z

.field private static mIsChildMode:Z

.field private static mIsXLarge:Z

.field private static mUseNavigationError:Z

.field private static sAcceptHeader:Ljava/lang/String;

.field private static sFactoryResetUrl:Ljava/lang/String;

.field private static sUserAgentHeader:Ljava/lang/String;


# instance fields
.field private bDownloadInternalMemory:Z

.field public cscHome:Ljava/lang/String;

.field private mAutoBrightness:Z

.field private mBrightness:I

.field private mContext:Landroid/content/Context;

.field private mDefaultApn:Ljava/lang/String;

.field private mHideUrlPreference:Landroid/content/SharedPreferences;

.field private mHideUrlPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field private mHomePageIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field resultFrameRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mEnablePowserControl:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsAutoHideEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mUseNavigationError:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mDefaultValueUseDataCompression:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsChildMode:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsXLarge:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mDefaultApn:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->bDownloadInternalMemory:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->cscHome:Ljava/lang/String;

    iput v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mBrightness:I

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mAutoBrightness:Z

    iput v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resultFrameRate:I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    const-string v3, "hide_url_preference"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mHideUrlPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mHideUrlPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mHideUrlPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setXLargeMode()V

    invoke-static {}, Lorg/samsung/base/Feature;->InitCSCFeature()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setChildMode()V

    :try_start_0
    const-string v2, "CscFeature_Web_SetHomepageURL"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->cscHome:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->cscHome:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->cscHome:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->cscHome:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "enable_chameleon_url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->cscHome:Ljava/lang/String;

    sput-object v2, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    :goto_2
    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    const-string v3, "{CID}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    const-string v3, "{CID}"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    const-string v2, "CscFeature_Web_SetOffOverviewModeAsDefault"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "overview_mode"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/chromium/content/app/LibraryLoader;->IsReady()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    :try_start_1
    invoke-static {p1, v2}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_1
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setOverviewModeEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setOverviewMode(Z)V

    goto/16 :goto_0

    :cond_4
    sput-object v1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "factoryreset_url"

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public static changeViewStyle(Landroid/view/View;Landroid/content/Context;)V
    .locals 6

    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->changeViewStyle(Landroid/view/View;Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast p0, Landroid/widget/Switch;

    const v4, 0x7f0d0012

    invoke-virtual {p0, p1, v4}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getIsAutoHideEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsAutoHideEnabled:Z

    return v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/extSdCard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/storage/extSdCard"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChildMode()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsChildMode:Z

    return v0
.end method

.method public static isXLarge()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsXLarge:Z

    return v0
.end method

.method private setChildMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "do_not_show_incognito_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsChildMode:Z

    return-void
.end method

.method public static setPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "prefetch_bandwidth"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->GetBandwidthFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->index()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBandwidthConservationOption(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "frame_rate"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "notification_state"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->GetNotificationFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;

    move-result-object v5

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/WebNotificationType;->index()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setWebNotificationType(I)V

    goto :goto_0

    :cond_2
    const-string v6, "search_suggestions"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchSuggestEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v6, "network_predictions"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setNetworkPredictionEnabled(Z)V

    goto :goto_0

    :cond_4
    const-string v6, "navigation_error"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setResolveNavigationErrorEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string v6, "user_agent"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v6, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v6, "text_scale"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    const/high16 v7, 0x3f80

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontScaleFactor(F)V

    goto/16 :goto_0

    :cond_7
    const-string v6, "enable_reader"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setReaderStatus(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "force_enable_zoom"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setForceEnableZoom(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "fontboosting_mode"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontBoostingModeEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v6, "wide_viewport"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUseWideViewport(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v6, "load_images"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v6, "autohide_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "autohide_enabled_engine"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "remote_debug_enabled_engine"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setRemoteDebugFeatureEngineFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_d
    const-string v6, "edgeglow_enabled_engine"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setEdgeGlowEffectFeatureEngineFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_e
    const-string v6, "enable_double_tap_patent"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setEnableDoubleTapPatentFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_f
    const-string v6, "placeholder_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setIsPlaceHolderEnabled(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v6, "smallwindow_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setsSmallWindowSize(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_11
    const-string v6, "tabswipe_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setTabSwipeStatus(Z)V

    goto/16 :goto_0

    :cond_12
    const-string v6, "multitab_dragdrop_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setMultitabDragDrop(Z)V

    goto/16 :goto_0

    :cond_13
    const-string v6, "uicompositor_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "parallel_canvas_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "tab_manager_perspective_ux_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    sput-boolean v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    goto/16 :goto_0

    :cond_14
    sput-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    goto/16 :goto_0

    :cond_15
    const-string v6, "tab_manager_single_activity_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    sput-boolean v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    goto/16 :goto_0

    :cond_16
    sput-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    goto/16 :goto_0

    :cond_17
    const-string v6, "tab_manager_compress_bitmaps_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    sput-boolean v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    goto/16 :goto_0

    :cond_18
    sput-boolean v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    goto/16 :goto_0

    :cond_19
    const-string v6, "popup_zoomer_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setPopUpZoomerFeatureFlag(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1a
    const-string v6, "session_cache_enabled"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSessionCacheEnabled(Z)V

    goto/16 :goto_0

    :cond_1b
    const-string v6, "power_saving_enable"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setIsPowerSavingEnabled(Z)V

    goto/16 :goto_0

    :cond_1c
    const-string v6, "data_compression_enable"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setIsDataCompressionUse(Z)V

    goto/16 :goto_0

    :cond_1d
    const-string v6, "save_formdata"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "remember_passwords"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "This should never be reached!"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sUserAgentHeader:Ljava/lang/String;

    return-void
.end method

.method private final setXLargeMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsXLarge:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public allowPrefetch()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "allow_prefetch"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "allow_prefetch"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->checkAllowPrefetch()Z

    move-result v0

    goto :goto_0
.end method

.method public checkAllowPrefetch()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "prefetch_bandwidth"

    sget-object v4, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->GetBandwidthFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->NEVER_PREFETCH:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isWiFiNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "allow_prefetch"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method public getAcceptHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sAcceptHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-object v0
.end method

.method public getAutoBrightness()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "autobrightness"

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mAutoBrightness:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mAutoBrightness:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mAutoBrightness:Z

    return v0
.end method

.method public getBrightness()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "brightness"

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mBrightness:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mBrightness:I

    return v0
.end method

.method public getContexualOverlayPref()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "overlay_pref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getContexualPref()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "contexual_contents"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDataCompressionCheck()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "data_compression_check"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDataCompressionCompressedSize()J
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getTurboCompressedSize()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getDataCompressionOriginalSize()J
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->getTurboOriginalSize()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getDataCompressionPercent()J
    .locals 7

    const/high16 v6, 0x42c8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionOriginalSize()J

    move-result-wide v4

    long-to-float v1, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionCompressedSize()J

    move-result-wide v4

    long-to-float v0, v4

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    div-float v4, v0, v1

    mul-float/2addr v4, v6

    sub-float v4, v6, v4

    float-to-long v2, v4

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultHomepage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultIndex()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :goto_0
    return v2

    :cond_0
    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public getDefaultPageCheck()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_reset_default_page"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDefaultapn()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "apn_setting"

    const-string v2, "cmwap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mDefaultApn:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mDefaultApn:Ljava/lang/String;

    return-object v0
.end method

.method public getDoNotShowIncognitoCheck()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "do_not_show_incognito_popup_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExtractModeCheck()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "extract_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExtractModeUserPref()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "extract_mode_user_pref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExtractValueCheck()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "extract_view"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFirstRunFlowComplete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resultFrameRate:I

    return v0
.end method

.method public getHideUrlPreference()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mHideUrlPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getHomePage()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "home_page"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome://quick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "home_page"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method public getHomePageIndex()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "home_page_index"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHomePagePicker()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "home_page_picker"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQualityvalue()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "image_quality_value"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsChildMode()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "do_not_show_incognito_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOtherProxyUsed()Z
    .locals 1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTurboHelper;->getOtherProxyUsed()Z

    move-result v0

    return v0
.end method

.method public getPDPParam()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "reset_pdp_param"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPrefBandwidthPreference()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSharedPreferenceValueFromNative()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prefetch_bandwidth"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefLoadImagePreference()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSharedPreferenceValueFromNative()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "load_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrefSearchEnginePreference()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingsContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSyncInternetDataValue()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sync_internet_data"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSyncOpenPagesValue()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sync_open_pages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSyncSavedPagesValue()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sync_saved_pages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sync_saved_pages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getSynchBookMarkValue()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sync_bookmarks"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTranslateLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "translate_language"

    const-string v2, "en-US"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslateModeUserPref()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "translate_mode_user_pref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUAString()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseDataCompressionPreference()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_data_compression_preference"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsDataCompressionUse()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUserAgentHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sUserAgentHeader:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadInternalMemory()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "download_default_storyage"

    const-string v3, "PHONE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY_CARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->bDownloadInternalMemory:Z

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->bDownloadInternalMemory:Z

    return v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->bDownloadInternalMemory:Z

    goto :goto_0
.end method

.method public isHideURLPrefEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isJavaScriptEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_javascript"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWiFiNetwork()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public resetInternetSync()V
    .locals 9

    const/16 v8, 0xbbf

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncInternetDataValue(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSynchBookMarkValue(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncOpenPagesValue(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncSavedPagesValue(Z)V

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "SYNC_KEY"

    const-string v5, "sync_internet_data"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SYNC_VALUE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v4, "SYNC_KEY"

    const-string v5, "sync_bookmarks"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SYNC_VALUE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v4, "SYNC_KEY"

    const-string v5, "sync_open_pages"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SYNC_VALUE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableSavePageSync()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SYNC_KEY"

    const-string v5, "sync_saved_pages"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SYNC_VALUE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v1, 0x0

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_2

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    aget-object v1, v4, v7

    :cond_2
    const-string v0, "com.sec.android.app.sbrowser"

    if-eqz v1, :cond_3

    invoke-static {v1, v0, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public resetPreferenceData(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "factoryreset_url"

    const-string v4, "none"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "factoryreset_url"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "factoryreset_url"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultHomepage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDefaultIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePageIndex(I)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setDefaultPageCheck(Z)V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->PREFETCH_ON_WIFI:Lcom/sec/android/app/sbrowser/preferences/BandwidthType;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/BandwidthType;->getDisplayTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBandwidthConservationOption(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/content/browser/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "fullscreen"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->updateHideURLPreferenceValue(Z)V

    const-string v2, "CscFeature_Web_EnableImage2Play"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enable_video_link"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "checked_imideo_eula"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "apccepted_imideo_eula"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setImideoDebugMode(I)V

    :cond_1
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setUsesEncodingDetector(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_text_encoding"

    const-string v4, "AutoDetect"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getInstance()Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setDefaultSearchEngineToNative()V

    const-string v2, "CscFeature_Web_SetOffOverviewModeAsDefault"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "overview_mode"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setOverviewModeEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setOverviewMode(Z)V

    :cond_2
    :goto_1
    const-string v2, "CscFeature_Web_DisableNetworkLinkPrediction"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "network_predictions"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setNetworkPredictionEnabled(Z)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontBoostingModeEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "fullscreen"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setOverviewModeEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setOverviewMode(Z)V

    goto :goto_1
.end method

.method public resetTurboData()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->resetTurboData()Z

    return-void
.end method

.method public setAcceptHeader(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sAcceptHeader:Ljava/lang/String;

    return-void
.end method

.method public setActiveTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method public setAllowPrefetch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_prefetch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAutoBrightness(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mAutoBrightness:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autobrightness"

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mAutoBrightness:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBrightness(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mBrightness:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "brightness"

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mBrightness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDataCompressionCheck(Z)V
    .locals 2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setTurboEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "enable_data_compression"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "data_compression_check"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDefaultPageCheck(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_reset_default_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDoNotShowIncognitoCheck(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "do_not_show_incognito_popup_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDownloadDefaultStorage(Landroid/content/Context;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v1, "download_default_storyage"

    const-string v2, "PHONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "download_default_storyage"

    const-string v2, "MEMORY_CARD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setExtractModeCheck(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "extract_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setExtractValueCheck(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "extract_view"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "extract_mode_user_pref"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFactoryResetHomeUrl(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    sput-object p1, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "factoryreset_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFrameRateValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resultFrameRate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resultFrameRate:I

    goto :goto_0

    :cond_2
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resultFrameRate:I

    goto :goto_0

    :cond_3
    const-string v0, "300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->resultFrameRate:I

    goto :goto_0
.end method

.method public final setHomePage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "home_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHomePageIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "home_page_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHomePagePicker(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "home_page_picker"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHomepageByChameleon(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enable_chameleon_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setImageQualityvalue(I)V
    .locals 3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setTurboImageQuality(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "data_compression_image_quality"

    add-int/lit8 v2, p1, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "image_quality_value"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setIsChildMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "do_not_show_incognito_menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setOverviewMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "overview_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setPDPParam(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reset_pdp_param"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSearchEngine(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->GetTypeFromTitle(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;

    move-result-object v0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SearchEngineType;->index()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngine(I)V

    const/16 v1, 0x29

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    return-void
.end method

.method public setSearchEngine(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngineEx(Ljava/util/HashMap;)V

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    return-void
.end method

.method public setSharedPreferenceValueFromNative()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->update(Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "load_images"

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v7

    invoke-virtual {v7}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->loadsImagesAutomatically()Z

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "navigation_error"

    sget-boolean v7, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mUseNavigationError:Z

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    sget-boolean v6, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mUseNavigationError:Z

    invoke-virtual {v3, v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setResolveNavigationErrorEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "location"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowLocationEnabled(Z)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "block_popups"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "block_popups"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    if-nez v0, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowPopupsEnabled(Z)V

    sget-boolean v3, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mIsXLarge:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "fontboosting_mode"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "fontboosting_mode"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontBoostingModeEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "enable_autofill"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "enable_autofill"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAutoFillEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "save_formdata"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "save_formdata"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setRememberFormDataEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "remember_passwords"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "remember_passwords"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setRememberPasswordsEnabled(ZLcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "accept_cookies"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "accept_cookies"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowCookiesEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "enable_javascript"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "enable_javascript"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "load_images"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "load_images"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setLoadsImagesAutomatically(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "enable_geolocation"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setAllowLocationEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    move v3, v5

    goto/16 :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "fontboosting_mode"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_2
.end method

.method public setSharedPreferenceValueFromNativeForSearchEngine()V
    .locals 3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->updateSearchEngineFromNative()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "search_engine"

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getSearchEngine()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSyncInternetDataValue(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_internet_data"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSyncOpenPagesValue(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_open_pages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSyncSavedPagesValue(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_saved_pages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSynchBookMarkValue(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_bookmarks"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTranslateLanguage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "translate_language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setTranslateModeUserPref(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "translate_mode_user_pref"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setUAString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "useragent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setUseDataCompressionPreference(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "use_data_compression_preference"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateHideURLPreferenceValue(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mHideUrlPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hide_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public updateTurboData(II)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/net/TurboDataController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/TurboDataController;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/net/TurboDataController;->updateTurboData(II)Z

    return-void
.end method

.method public useFullscreen()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fullscreen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
