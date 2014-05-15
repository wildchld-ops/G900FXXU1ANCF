.class public Lorg/samsung/chrome/browser/SbrChromeNativePreferences;
.super Ljava/lang/Object;
.source "SbrChromeNativePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;,
        Lorg/samsung/chrome/browser/SbrChromeNativePreferences$PasswordListObserver;,
        Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;,
        Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;
    }
.end annotation


# static fields
.field public static final EXCEPTION_DISPLAY_PATTERN:Ljava/lang/String; = "displayPattern"

.field public static final EXCEPTION_SETTING:Ljava/lang/String; = "setting"

.field public static final EXCEPTION_SETTING_ALLOW:Ljava/lang/String; = "allow"

.field public static final EXCEPTION_SETTING_BLOCK:Ljava/lang/String; = "block"

.field public static final EXCEPTION_SETTING_DEFAULT:Ljava/lang/String; = "default"

.field private static final LOG_TAG:Ljava/lang/String; = "SbrChromeNativePreferences"

.field private static sDefaultCountryCodeAtInstall:Ljava/lang/String;

.field private static sPrefs:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;


# instance fields
.field private lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mAcceptCookiesEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAdblockerEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAllowContentURLAccess:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAllowLocationEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAllowPopupsEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAppNapEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAutofillEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mAutologinEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mBandwidthConservationOption:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mBgColorGreyEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mBgColorLightGreyEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mBgColorOffhiteEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mClearBrowsingDataListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;

.field private mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

.field private mFilterBitmapDisabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mFontBoostingModeEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mFontScaleFactor:F
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mForceEnableZoom:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

.field private mGifAnimationDisabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mImideoDebugMode:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mIsBingSearchEngineEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mJavaScriptEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mKikinEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mKikinListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;

.field private mLoadsImagesAutomatically:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mMinimumFontSize:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mNetworkPredictionEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mOverviewModeEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mProgressiveImageDecodeDisabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mRememberFormDataEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mRememberPasswordsEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mRemoteDebuggingEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mResolveNavigationErrorEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mSearchEngine:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mSearchSuggestEnabled:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mTextEncoding:Ljava/lang/String;
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

.field private mUniversalDetector:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mUseWideViewport:Z
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mWebNotificationType:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sPrefs:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    const-string v0, ""

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sDefaultCountryCodeAtInstall:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mKikinListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->preInitialConfiguration()V

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "enable-remote-debugging"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/DevToolsServer;

    const/4 v1, 0x0

    const-string v2, "chrome_devtools_remote"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/DevToolsServer;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/DevToolsServer;->setRemoteDebuggingEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUserAgent:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method private browsingDataCleared()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mClearBrowsingDataListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mClearBrowsingDataListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;

    invoke-interface {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;->onBrowsingDataCleared()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mClearBrowsingDataListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;

    :cond_0
    return-void
.end method

.method public static getDefaultCountryCodeAtInstall()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sDefaultCountryCodeAtInstall:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;
    .locals 2

    const-class v1, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sPrefs:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    invoke-direct {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;-><init>()V

    sput-object v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sPrefs:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    :cond_0
    sget-object v0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sPrefs:Lorg/samsung/chrome/browser/SbrChromeNativePreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSavedNamePassword(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetSavedNamePassword(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedPasswordException(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetSavedPasswordException(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private native nativeClearBrowsingData(ZZZZZ)V
.end method

.method private native nativeClearPopUpSettings()V
.end method

.method private native nativeClearWebNotification()V
.end method

.method private native nativeGet()V
.end method

.method private native nativeGetAboutVersionStrings()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCookiesForUrl(Ljava/lang/String;)V
.end method

.method private native nativeGetCountryCodeAtInstall()Ljava/lang/String;
.end method

.method private native nativeGetCurrentCacheSize()V
.end method

.method private native nativeGetCurrentCookieCount()V
.end method

.method private native nativeGetFaviconURLForCurrentSearchEngine()Ljava/lang/String;
.end method

.method private native nativeGetFaviconURLForSearchEngine(I)Ljava/lang/String;
.end method

.method private native nativeGetLocalizedSearchEngines()[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetNameForCurrentSearchEngine()Ljava/lang/String;
.end method

.method private native nativeGetPopupExceptions()[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetSavedNamePassword(I)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetSavedPasswordException(I)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetURLForSearchEngine(I)Ljava/lang/String;
.end method

.method private native nativeGetUserAgent()Ljava/lang/String;
.end method

.method private native nativeRemovePopupException(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveSavedNamePassword(I)V
.end method

.method private static native nativeRemoveSavedPasswordException(I)V
.end method

.method private native nativeResetToDefaultSettings()V
.end method

.method private native nativeSetAllowContentURLAccess(Z)V
.end method

.method private native nativeSetAllowCookiesEnabled(Z)V
.end method

.method private native nativeSetAllowLocationEnabled(Z)V
.end method

.method private native nativeSetAllowPopupsEnabled(Z)V
.end method

.method private native nativeSetAutoFillEnabled(Z)V
.end method

.method private native nativeSetAutologinEnabled(Z)V
.end method

.method private native nativeSetBandwidthConservationOption(I)V
.end method

.method private native nativeSetBingSearchEngineEnabledState(Z)V
.end method

.method private native nativeSetCountryCodeAtInstall(Ljava/lang/String;)V
.end method

.method private native nativeSetDisableFilterBitmap(Z)V
.end method

.method private native nativeSetDisableGifAnimation(Z)V
.end method

.method private native nativeSetDisableProgressiveImageDecode(Z)V
.end method

.method private native nativeSetEnableAdBlocker(Z)V
.end method

.method private native nativeSetEnableAppNap(Z)V
.end method

.method private native nativeSetEnableBgColorGrey(Z)V
.end method

.method private native nativeSetEnableBgColorLightGrey(Z)V
.end method

.method private native nativeSetEnableBgColorOffWhite(Z)V
.end method

.method private native nativeSetFontBoostingModeEnabled(Z)V
.end method

.method private native nativeSetFontScaleFactor(F)V
.end method

.method private native nativeSetForceEnableZoom(Z)V
.end method

.method private native nativeSetHomeScreenMode(I)V
.end method

.method private native nativeSetImideoDebugMode(I)V
.end method

.method private native nativeSetJavaScriptEnabled(Z)V
.end method

.method private native nativeSetKikinEnabled(Z)V
.end method

.method private native nativeSetLoadsImagesAutomatically(Z)V
.end method

.method private native nativeSetMinimumFontSize(I)V
.end method

.method private native nativeSetNetworkPredictionEnabled(Z)V
.end method

.method private native nativeSetOverviewModeEnabled(Z)V
.end method

.method private native nativeSetPopupException(Ljava/lang/String;Z)V
.end method

.method private native nativeSetProxyServer(Ljava/lang/String;)V
.end method

.method private native nativeSetRememberFormDataEnabled(Z)V
.end method

.method private native nativeSetRememberPasswordsEnabled(Z)V
.end method

.method private native nativeSetRemoteDebuggingEnabled(Z)V
.end method

.method private native nativeSetResolveNavigationErrorEnabled(Z)V
.end method

.method private native nativeSetSavePageDirectory(Ljava/lang/String;)V
.end method

.method private native nativeSetSearchEngine(I)V
.end method

.method private native nativeSetSearchEngineEx(Ljava/util/HashMap;)V
.end method

.method private native nativeSetSearchSuggestEnabled(Z)V
.end method

.method private native nativeSetSessionCacheEnabled(Z)V
.end method

.method private static native nativeSetTurboEnabled(Z)V
.end method

.method private static native nativeSetTurboImageQuality(I)V
.end method

.method private native nativeSetUserAgent(Ljava/lang/String;)V
.end method

.method private native nativeSetWebNotificationType(I)V
.end method

.method private static native nativeStartPasswordListRequest(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$PasswordListObserver;)V
.end method

.method private static native nativeStopPasswordListRequest()V
.end method

.method private native nativeUpdateSearchEngineInJava()V
.end method

.method private native nativesetTextEncoding(Ljava/lang/String;)V
.end method

.method private native nativesetUsesEncodingDetector(Z)V
.end method

.method private preInitialConfiguration()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetCountryCodeAtInstall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetCountryCodeAtInstall(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGet()V

    return-void
.end method

.method public static removeSavedNamePassword(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeRemoveSavedNamePassword(I)V

    return-void
.end method

.method public static removeSavedPasswordException(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeRemoveSavedPasswordException(I)V

    return-void
.end method

.method public static setDefaultCountryCodeAtInstall(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sDefaultCountryCodeAtInstall:Ljava/lang/String;

    return-void
.end method

.method public static startPasswordListRequest(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$PasswordListObserver;)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeStartPasswordListRequest(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$PasswordListObserver;)V

    return-void
.end method

.method public static stopPasswordListRequest()V
    .locals 0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeStopPasswordListRequest()V

    return-void
.end method


# virtual methods
.method public ClearPopUpSettings()V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeClearPopUpSettings()V

    return-void
.end method

.method public GetCookiesForUrl(Ljava/lang/String;Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;)Z
    .locals 2

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "GetCookiesForUrl is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetCookiesForUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public GetUserAgent()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetDisableFilterBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mFilterBitmapDisabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetDisableFilterBitmap(Z)V

    return-void
.end method

.method public SetDisableGifAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGifAnimationDisabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetDisableGifAnimation(Z)V

    return-void
.end method

.method public SetDisableProgressiveImageDecode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mProgressiveImageDecodeDisabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetDisableProgressiveImageDecode(Z)V

    return-void
.end method

.method public SetEnableAdBlocker(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAdblockerEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetEnableAdBlocker(Z)V

    return-void
.end method

.method public SetEnableAppNap(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAppNapEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetEnableAppNap(Z)V

    return-void
.end method

.method public SetEnableBgColorGrey(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBgColorGreyEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetEnableBgColorGrey(Z)V

    return-void
.end method

.method public SetEnableBgColorLightGrey(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBgColorLightGreyEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetEnableBgColorLightGrey(Z)V

    return-void
.end method

.method public SetEnableBgColorOffWhite(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBgColorOffhiteEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetEnableBgColorOffWhite(Z)V

    return-void
.end method

.method public SetProxyServer(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetProxyServer(Ljava/lang/String;)V

    return-void
.end method

.method public clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V
    .locals 6

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mClearBrowsingDataListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeClearBrowsingData(ZZZZZ)V

    return-void
.end method

.method public clearWebNotification()V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeClearWebNotification()V

    return-void
.end method

.method public getAboutVersionStrings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetAboutVersionStrings()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCacheSize(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetCurrentCacheSize()V

    return-void
.end method

.method public getCurrentCookieCount(Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetCurrentCookieCount()V

    return-void
.end method

.method public getDisableFilterBitmap()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mFilterBitmapDisabled:Z

    return v0
.end method

.method public getDisableGifAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGifAnimationDisabled:Z

    return v0
.end method

.method public getDisableProgressiveImageDecode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mProgressiveImageDecodeDisabled:Z

    return v0
.end method

.method public getEnableAdBlocker()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAdblockerEnabled:Z

    return v0
.end method

.method public getEnableAppNap()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAppNapEnabled:Z

    return v0
.end method

.method public getEnableBgColorGrey()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBgColorGreyEnabled:Z

    return v0
.end method

.method public getEnableBgColorLightGrey()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBgColorLightGreyEnabled:Z

    return v0
.end method

.method public getEnableBgColorOffWhite()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBgColorOffhiteEnabled:Z

    return v0
.end method

.method public getFaviconURLForCurrentSearchEngine()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetFaviconURLForCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaviconURLForSearchEngine(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetFaviconURLForSearchEngine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontBoostingMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mFontBoostingModeEnabled:Z

    return v0
.end method

.method public getFontScaleFactor()F
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mFontScaleFactor:F

    return v0
.end method

.method public getForceEnableZoom()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mForceEnableZoom:Z

    return v0
.end method

.method public getIsBingSearchEngineEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mIsBingSearchEngineEnabled:Z

    return v0
.end method

.method public getLocalizedSearchEngines()[Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetLocalizedSearchEngines()[Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mMinimumFontSize:I

    return v0
.end method

.method public getNameForCurrentSearchEngine()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetNameForCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPopupExceptionSettingFromPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v4, "default"

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getPopupExceptions()[Ljava/util/HashMap;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const-string v5, "displayPattern"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "setting"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPopupExceptions()[Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetPopupExceptions()[Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngine()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mSearchEngine:I

    return v0
.end method

.method public getURLForSeachEngine(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetURLForSearchEngine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseWideViewport()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUseWideViewport:Z

    return v0
.end method

.method public getWebNotificationType()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mWebNotificationType:I

    return v0
.end method

.method public isAcceptCookiesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAcceptCookiesEnabled:Z

    return v0
.end method

.method public isAllowLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowLocationEnabled:Z

    return v0
.end method

.method public isAutofillEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAutofillEnabled:Z

    return v0
.end method

.method public isAutologinEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAutologinEnabled:Z

    return v0
.end method

.method public isKikinEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mKikinEnabled:Z

    return v0
.end method

.method public isNetworkPredictionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mNetworkPredictionEnabled:Z

    return v0
.end method

.method public isRememberFormDataEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberFormDataEnabled:Z

    return v0
.end method

.method public isRememberPasswordsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberPasswordsEnabled:Z

    return v0
.end method

.method public isResolveNavigationErrorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mResolveNavigationErrorEnabled:Z

    return v0
.end method

.method public isSearchSuggestEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mSearchSuggestEnabled:Z

    return v0
.end method

.method public javaScriptEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mJavaScriptEnabled:Z

    return v0
.end method

.method public loadsImagesAutomatically()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mLoadsImagesAutomatically:Z

    return v0
.end method

.method public onGetCookiesForUrl(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "OnGetCookiesForUrl is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

    invoke-interface {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;->OnGetCookiesForUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mGetCookiesForUrlListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$GetCookiesForUrlListener;

    return-void
.end method

.method public onGetCurrentCacheSize(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SbrChromeNativePreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCurrentCacheSize cachesize= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onGetCurrentCookieCount(I)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "SbrChromeNativePreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCurrentCookieCount cookieCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUSBATComandReceiver:Lcom/sec/android/app/sbrowser/preferences/USBATComandReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public popupsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowPopupsEnabled:Z

    return v0
.end method

.method public registerAutoFillDataUpdatedListener()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removePopupException(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeRemovePopupException(Ljava/lang/String;)V

    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeResetToDefaultSettings()V

    return-void
.end method

.method public setAllowContentURLAccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowContentURLAccess:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAllowContentURLAccess(Z)V

    return-void
.end method

.method public setAllowCookiesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getCookiesSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAcceptCookiesEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAcceptCookiesEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAllowCookiesEnabled(Z)V

    goto :goto_0
.end method

.method public setAllowLocationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowLocationEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAllowLocationEnabled(Z)V

    return-void
.end method

.method public setAllowPopupsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "setPopupEnabled : not allowed based on Browser Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowPopupsEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowPopupsEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAllowPopupsEnabled(Z)V

    goto :goto_0
.end method

.method public setAutoFillEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "setAutoFillEnabled : not allowed based on Browser Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAutofillEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAutofillEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAutoFillEnabled(Z)V

    goto :goto_0
.end method

.method public setAutologinEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAutologinEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAutologinEnabled(Z)V

    return-void
.end method

.method public setBandwidthConservationOption(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBandwidthConservationOption:I

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetBandwidthConservationOption(I)V

    return-void
.end method

.method public setBingSearchEngineEnabledState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mIsBingSearchEngineEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetBingSearchEngineEnabledState(Z)V

    return-void
.end method

.method public setFontBoostingModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mFontBoostingModeEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetFontBoostingModeEnabled(Z)V

    return-void
.end method

.method public setFontScaleFactor(F)V
    .locals 0

    iput p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mFontScaleFactor:F

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetFontScaleFactor(F)V

    return-void
.end method

.method public setForceEnableZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mForceEnableZoom:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetForceEnableZoom(Z)V

    return-void
.end method

.method public setHomeScreenMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetHomeScreenMode(I)V

    return-void
.end method

.method public setImideoDebugMode(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mImideoDebugMode:I

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetImideoDebugMode(I)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getJavaScriptSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "setJavaScriptEnabled : not allowed based on Browser Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mJavaScriptEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mJavaScriptEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetJavaScriptEnabled(Z)V

    goto :goto_0
.end method

.method public setKikinEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mKikinEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetKikinEnabled(Z)V

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mKikinListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mKikinListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;

    invoke-interface {v0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;->onKikinPreferenceChange(Z)V

    :cond_0
    return-void
.end method

.method public setKikinPreferenceListener(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mKikinListener:Lorg/samsung/chrome/browser/SbrChromeNativePreferences$KikinPreferenceListener;

    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mLoadsImagesAutomatically:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetLoadsImagesAutomatically(Z)V

    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mMinimumFontSize:I

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetMinimumFontSize(I)V

    return-void
.end method

.method public setNetworkPredictionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mNetworkPredictionEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetNetworkPredictionEnabled(Z)V

    return-void
.end method

.method public setOverviewModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mOverviewModeEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetOverviewModeEnabled(Z)V

    return-void
.end method

.method public setPopupException(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "setPoppException : not allowed based on Browser Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetPopupException(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setRememberFormDataEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "setRememberFormDataEnabled : not allowed based on Browser Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberFormDataEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberFormDataEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetRememberFormDataEnabled(Z)V

    goto :goto_0
.end method

.method public setRememberPasswordsEnabled(ZLcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrChromeNativePreferences"

    const-string v1, "setRememberPasswordsEnabled : not allowed based on Browser Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberPasswordsEnabled:Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSettingsContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sbrowser_remember_password"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberPasswordsEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetRememberPasswordsEnabled(Z)V

    goto :goto_0
.end method

.method public setRemoteDebuggingEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRemoteDebuggingEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetRemoteDebuggingEnabled(Z)V

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "enable-remote-debugging"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mDevToolsServer:Lorg/chromium/chrome/browser/DevToolsServer;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/DevToolsServer;->setRemoteDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setResolveNavigationErrorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mResolveNavigationErrorEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetResolveNavigationErrorEnabled(Z)V

    return-void
.end method

.method public setSavePageDirectory(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetSavePageDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchEngine(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mSearchEngine:I

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetSearchEngine(I)V

    return-void
.end method

.method public setSearchEngineEx(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetSearchEngineEx(Ljava/util/HashMap;)V

    return-void
.end method

.method public setSearchSuggestEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mSearchSuggestEnabled:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetSearchSuggestEnabled(Z)V

    return-void
.end method

.method public setSessionCacheEnabled(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetSessionCacheEnabled(Z)V

    return-void
.end method

.method public setTextEncoding(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mTextEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativesetUsesEncodingDetector(Z)V

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativesetTextEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setTurboEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetTurboEnabled(Z)V

    return-void
.end method

.method public setTurboImageQuality(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetTurboImageQuality(I)V

    return-void
.end method

.method public setUseWideViewport(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUseWideViewport:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public setUsesEncodingDetector(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUniversalDetector:Z

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativesetUsesEncodingDetector(Z)V

    return-void
.end method

.method public setWebNotificationType(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mWebNotificationType:I

    invoke-direct {p0, p1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetWebNotificationType(I)V

    return-void
.end method

.method public unregisterAutoFillDataUpdatedListener(I)V
    .locals 0

    return-void
.end method

.method public update(Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGetCountryCodeAtInstall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->sDefaultCountryCodeAtInstall:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetCountryCodeAtInstall(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeGet()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSettingsContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_1

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->lEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    const-string v1, "SbrChromeNativePreferences"

    const-string v2, "Browser service fetched!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-eqz v1, :cond_5

    const-string v1, "SbrChromeNativePreferences"

    const-string v2, "update : Applying Browser Policy Parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/BrowserPolicy;->getAutoFillSetting()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SbrChromeNativePreferences"

    const-string v2, "Autofill disabled by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAutofillEnabled:Z

    invoke-direct {p0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAutoFillEnabled(Z)V

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberFormDataEnabled:Z

    invoke-direct {p0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetRememberFormDataEnabled(Z)V

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mRememberPasswordsEnabled:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSettingsContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sbrowser_remember_password"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetRememberPasswordsEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/BrowserPolicy;->getCookiesSetting()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SbrChromeNativePreferences"

    const-string v2, "Cookies disabled by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAcceptCookiesEnabled:Z

    invoke-direct {p0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAllowCookiesEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/BrowserPolicy;->getJavaScriptSetting()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SbrChromeNativePreferences"

    const-string v2, "Java Script disabled by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mJavaScriptEnabled:Z

    invoke-direct {p0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetJavaScriptEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/BrowserPolicy;->getPopupsSetting()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "SbrChromeNativePreferences"

    const-string v2, "Popups disabled by MDM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mAllowPopupsEnabled:Z

    invoke-direct {p0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeSetAllowPopupsEnabled(Z)V

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->ClearPopUpSettings()V

    :cond_5
    return-void
.end method

.method public updateSearchEngineFromNative()V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->nativeUpdateSearchEngineInJava()V

    return-void
.end method

.method public userAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method
