.class public Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;
.super Ljava/lang/Object;
.source "SBrowserFeatureFlag.java"


# static fields
.field public static AirBrowseEnabled:Ljava/lang/Boolean;

.field public static final CHINA:Ljava/lang/Boolean;

.field private static FingerPrintFlag:Ljava/lang/Boolean;

.field public static final READER_MODE:I

.field private static ScriptNativeLoginToggleFlag:Ljava/lang/Boolean;

.field public static TabCreateDeleteAnimation:Ljava/lang/Boolean;

.field private static airGestureFlag:Ljava/lang/Boolean;

.field private static airViewMagnifierFlag:Ljava/lang/Boolean;

.field private static asyncLibraryLoadFalg:Ljava/lang/Boolean;

.field private static cloudServiceFlag:Ljava/lang/Boolean;

.field private static enableEnableOpenInNewTabWithCtrlKey:Z

.field private static enablePcBookmarksFolder:Z

.field private static enableSavePage:Ljava/lang/Boolean;

.field private static enableSavePageSync:Ljava/lang/Boolean;

.field private static groupItFlag:Ljava/lang/Boolean;

.field public static final isAppLaunchTimeEnabled:Ljava/lang/Boolean;

.field public static isDataCompressionUse:Ljava/lang/Boolean;

.field private static isNewQuickLaunch:Ljava/lang/Boolean;

.field private static isNewUxQuickAccessEnabled:Ljava/lang/Boolean;

.field private static isQuickAccessViewPagerEnabled:Ljava/lang/Boolean;

.field public static isSyncWithPCPreferenceEnabled:Ljava/lang/Boolean;

.field private static linkifyEnabled:Ljava/lang/Boolean;

.field public static mAppSideHideURLBarFeature:Z

.field public static mAppSideHideURLBarFeatureSIP:Z

.field public static mAutoCompleteEnabled:Ljava/lang/Boolean;

.field private static mAutoHideFeatureEngineFlag:Ljava/lang/Boolean;

.field private static mAutoHideFeatureFlag:Ljava/lang/Boolean;

.field private static mAutoHideFeaturePrefFlag:Ljava/lang/Boolean;

.field private static mAutoHideFeatureTopControlSupportFlag:Ljava/lang/Boolean;

.field public static mAutoHideNoResizingFlag:Ljava/lang/Boolean;

.field public static mBackKeyPressedFeatureEnabling:Ljava/lang/Boolean;

.field public static mBackKeyPressedWhitePlaceHolder:Ljava/lang/Boolean;

.field private static mEdgeGlowEffectFeatureEngineFlag:Ljava/lang/Boolean;

.field private static mEnableDoubleTapPatent:Ljava/lang/Boolean;

.field private static mIsBottomBarEnabled:Ljava/lang/Boolean;

.field private static mIsContextualSearchEnabled:Ljava/lang/Boolean;

.field private static mIsExtractModeEnabled:Ljava/lang/Boolean;

.field private static mIsReadingListFaceDetection:Ljava/lang/Boolean;

.field private static mIsTranslationEnabled:Ljava/lang/Boolean;

.field private static mIsUndoPopupEnabled:Ljava/lang/Boolean;

.field private static mIsXlarge:Z

.field private static mMultiTabDragDrop:Z

.field private static mPopUpZoomerFeatureFlag:Ljava/lang/Boolean;

.field private static mPowerManagement:Ljava/lang/Boolean;

.field public static mReadingListCardFeature:Z

.field private static mRemoteDebugFeatureFlag:Ljava/lang/Boolean;

.field private static mTabSwipe:Z

.field private static mThumbnailCaptureOptimization:Z

.field private static reLoadTabsFalg:Ljava/lang/Boolean;

.field private static readerFlag:Ljava/lang/Boolean;

.field private static sEnableBeyondPcFlag:Ljava/lang/Boolean;

.field private static sEnableSelectionToolTipFlag:Ljava/lang/Boolean;

.field private static sIsPlaceHolderEnabled:Ljava/lang/Boolean;

.field private static sSbrContentViewRenderViewEnabled:Ljava/lang/Boolean;

.field private static sSettingAccountSyncEnabled:Ljava/lang/Boolean;

.field private static sSmallWindowSize:Ljava/lang/Boolean;

.field private static sSmartSuggestEnabled:Ljava/lang/Boolean;

.field private static saveForLaterFlag:Ljava/lang/Boolean;

.field private static savePageDeleteFeatue:Ljava/lang/Boolean;

.field private static sbrContentViewFlag:Ljava/lang/Boolean;

.field private static sbrEnterLongPressFlag:Ljava/lang/Boolean;

.field private static sbrFormNavigationFlag:Ljava/lang/Boolean;

.field public static sbrHtmlDragAndDropEnabled:Ljava/lang/Boolean;

.field public static sbrInputBoxScrollEnabled:Ljava/lang/Boolean;

.field public static sbrMultiInstanceDragAndDrop:Ljava/lang/Boolean;

.field private static sbrMultiInstanceTabDragAndDrop:Ljava/lang/Boolean;

.field private static sbrRSSFeatureEnabled:Ljava/lang/Boolean;

.field public static sbrWebFilterEnabled:Ljava/lang/Boolean;

.field private static smartClipEnabled:Ljava/lang/Boolean;

.field private static smartScrollFlag:Ljava/lang/Boolean;

.field private static spcExtensionFlag:Ljava/lang/Boolean;

.field private static spenHoverPreviewFlag:Ljava/lang/Boolean;

.field private static spenHoverScrollFlag:Ljava/lang/Boolean;

.field private static spenTextSelectionFlag:Ljava/lang/Boolean;

.field private static supportWMLviaHtmlFeatureFlag:Ljava/lang/Boolean;

.field private static tabManagerTiltScrollFlag:Ljava/lang/Boolean;

.field private static tabsFeatureBookmarkSavedPagesHistory:Ljava/lang/Boolean;

.field private static toolBarFlag:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->readerFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->cloudServiceFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->saveForLaterFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->supportWMLviaHtmlFeatureFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spcExtensionFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->asyncLibraryLoadFalg:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->reLoadTabsFalg:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spenHoverPreviewFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spenHoverScrollFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spenTextSelectionFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->tabManagerTiltScrollFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->groupItFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sEnableBeyondPcFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->tabsFeatureBookmarkSavedPagesHistory:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->savePageDeleteFeatue:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enableSavePage:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enableSavePageSync:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sEnableSelectionToolTipFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrContentViewFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->toolBarFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrFormNavigationFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sIsPlaceHolderEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSbrContentViewRenderViewEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSettingAccountSyncEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSmallWindowSize:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrHtmlDragAndDropEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->smartClipEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->smartScrollFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->airGestureFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->FingerPrintFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->ScriptNativeLoginToggleFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrEnterLongPressFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrInputBoxScrollEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mBackKeyPressedFeatureEnabling:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mBackKeyPressedWhitePlaceHolder:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrWebFilterEnabled:Ljava/lang/Boolean;

    const-string v0, "sbrowser.readermode"

    const/16 v3, 0x9

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->READER_MODE:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoCompleteEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsBottomBarEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsExtractModeEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsContextualSearchEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsTranslationEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isSyncWithPCPreferenceEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsUndoPopupEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsReadingListFaceDetection:Ljava/lang/Boolean;

    const-string v0, "China"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHINA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "china"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->CHINA:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->AirBrowseEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->TabCreateDeleteAnimation:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->linkifyEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrMultiInstanceTabDragAndDrop:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrRSSFeatureEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSmartSuggestEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrMultiInstanceDragAndDrop:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->airViewMagnifierFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isNewQuickLaunch:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isQuickAccessViewPagerEnabled:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isNewUxQuickAccessEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureEngineFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeaturePrefFlag:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideNoResizingFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mEdgeGlowEffectFeatureEngineFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureTopControlSupportFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mPopUpZoomerFeatureFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mRemoteDebugFeatureFlag:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mEnableDoubleTapPatent:Ljava/lang/Boolean;

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enablePcBookmarksFolder:Z

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAppSideHideURLBarFeatureSIP:Z

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAppSideHideURLBarFeature:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mReadingListCardFeature:Z

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mTabSwipe:Z

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mMultiTabDragDrop:Z

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mThumbnailCaptureOptimization:Z

    sput-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enableEnableOpenInNewTabWithCtrlKey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mPowerManagement:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isDataCompressionUse:Ljava/lang/Boolean;

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAirBrowseEnabled()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flte"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "flteskt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsXlarge:Z

    if-nez v2, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->AirBrowseEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getAirGestureFlag()Z
    .locals 2

    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flteskt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->airGestureFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getAirViewMagnifierFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->airViewMagnifierFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getAppSideHideURLBarFeature()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAppSideHideURLBarFeature:Z

    return v0
.end method

.method public static getAutoHideFeatureEngineFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureEngineFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getAutoHideFeatureFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getAutoHideFeaturePrefFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeaturePrefFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getAutoHideFeatureTopControlSupportFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureTopControlSupportFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getBackKeyPlaceHolder()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mBackKeyPressedFeatureEnabling:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getBeyondPcFlagStatus()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sEnableBeyondPcFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCloudServicesFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->cloudServiceFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getEdgeGlowEffectFeatureEngineFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mEdgeGlowEffectFeatureEngineFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getEnableDoubleTapPatentFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mEnableDoubleTapPatent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getEnableOpenInNewTabWithCtrlKey()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enableEnableOpenInNewTabWithCtrlKey:Z

    return v0
.end method

.method public static getEnablePcBookmarks()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enablePcBookmarksFolder:Z

    return v0
.end method

.method public static getEnableSavePage()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enableSavePage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getEnableSavePageSync()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->enableSavePageSync:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getEnterLongPressFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrEnterLongPressFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getGroupItFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->groupItFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getHoverPreviewFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spenHoverPreviewFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getHoverScrollFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spenHoverScrollFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getHtmlDragAndDropEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrHtmlDragAndDropEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getInputBoxScrollEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrInputBoxScrollEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIsAutoCompleteEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoCompleteEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIsBackKeyWhitePlaceHolder()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mBackKeyPressedWhitePlaceHolder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIsBottomBarEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsBottomBarEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsContextualSearchEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsContextualSearchEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsDataCompressionUse()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isDataCompressionUse:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsExtractModeEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsExtractModeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsNewQuickLaunch()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsXlarge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isNewQuickLaunch:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isNewUxQuickAccessEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsPlaceHolderEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sIsPlaceHolderEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isQuickAccessViewPagerEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsReadingListFaceDetectionEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsReadingListFaceDetection:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsSbrContentViewRenderView()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSbrContentViewRenderViewEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIsSbrRSSFeatureEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrRSSFeatureEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIsSettingAccountSyncEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSettingAccountSyncEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsTranslationEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsTranslationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getIsUndoPopupEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsUndoPopupEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getLinkifytFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->linkifyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getMultiInstanceDragAndDropEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrMultiInstanceDragAndDrop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getMultiInstanceTabDragAndDropEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrMultiInstanceTabDragAndDrop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getMultitabDragDrop()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mMultiTabDragDrop:Z

    return v0
.end method

.method public static getPopUpZoomerFeatureFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mPopUpZoomerFeatureFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getPowerSavingModeValue()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mPowerManagement:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getReLoadTabsFalg()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->reLoadTabsFalg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getReaderStatus()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->readerFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getReadingListCardFeature()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mReadingListCardFeature:Z

    return v0
.end method

.method public static getRemoteDebugFeatureEngineFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mRemoteDebugFeatureFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getSPCExtensionServiceFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spcExtensionFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSPenTextSelectionFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->spenTextSelectionFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSaveDeleteFeature()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->savePageDeleteFeatue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSaveForLaterFeatureStatus()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->saveForLaterFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSbrContentViewFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrContentViewFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSbrFingerPrintFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->FingerPrintFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSbrFormNavigationFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sbrFormNavigationFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSbrScriptNativeLoginToggleFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->ScriptNativeLoginToggleFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSelectionToolTipFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sEnableSelectionToolTipFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSmartClipFlag()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->smartClipEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getSmartScrollFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->smartScrollFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSmartSuggestBarFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSmartSuggestEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getSupportWMLviaHtmlFeatureFlagStatus()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->supportWMLviaHtmlFeatureFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getTabCreateDeleteAnimation()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsXlarge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->TabCreateDeleteAnimation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static getTabManagerTiltScrollFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->tabManagerTiltScrollFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getTabSwipeStatus()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mTabSwipe:Z

    return v0
.end method

.method public static getTabsFeature()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->tabsFeatureBookmarkSavedPagesHistory:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getThumbnailCaptureOptimizationFlagStatus()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mThumbnailCaptureOptimization:Z

    return v0
.end method

.method public static getToolBarFlag()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->toolBarFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getsSmallWindowSize()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSmallWindowSize:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isAsyncLibraryLoadEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->asyncLibraryLoadFalg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setAutoHideFeatureEngineFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureEngineFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setAutoHideFeatureFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setAutoHideFeaturePrefFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeaturePrefFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setAutoHideFeatureTopControlSupportFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAutoHideFeatureTopControlSupportFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setEdgeGlowEffectFeatureEngineFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mEdgeGlowEffectFeatureEngineFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setEnableDoubleTapPatentFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mEnableDoubleTapPatent:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsDataCompressionUse(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isDataCompressionUse:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsPlaceHolderEnabled(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sIsPlaceHolderEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsPowerSavingEnabled(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mPowerManagement:Ljava/lang/Boolean;

    return-void
.end method

.method public static setMultitabDragDrop(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mMultiTabDragDrop:Z

    return-void
.end method

.method public static setPopUpZoomerFeatureFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mPopUpZoomerFeatureFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setReaderStatus(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->readerFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setRemoteDebugFeatureEngineFlag(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mRemoteDebugFeatureFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static setTabSwipeStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mTabSwipe:Z

    return-void
.end method

.method public static setXlargeUIFlag(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mIsXlarge:Z

    return-void
.end method

.method public static setsSmallWindowSize(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->sSmallWindowSize:Ljava/lang/Boolean;

    return-void
.end method
