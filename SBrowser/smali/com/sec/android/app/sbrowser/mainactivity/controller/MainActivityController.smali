.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;
.implements Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;
.implements Lorg/samsung/content/sbrowser/HideUrlBarListener;
.implements Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;
.implements Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$SetBatteryADCTask;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$MainWithNative;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$ActivityResult;,
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION:Ljava/lang/String; = "notifications"

.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final ACTION_SHOW_BROWSER:Ljava/lang/String; = "show_browser"

.field private static final ACTION_START_TRACE:Ljava/lang/String; = "com.sec.android.app.sbrowser.GPU_PROFILER_START"

.field private static final ACTION_STOP_TRACE:Ljava/lang/String; = "com.sec.android.app.sbrowser.GPU_PROFILER_STOP"

.field public static final BROWSER_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final CHECK_VALIDATION_BEFORE_ADD_BOOKMARK:I = 0xa

.field public static final CHECK_VALIDATION_BEFORE_BOOKMARK_LIST:I = 0xb

.field private static final CHOOSER_INTENT:Ljava/lang/String; = "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER_FORWARD"

.field private static final COMMAND_LINE_FILE:Ljava/lang/String; = "/data/local/tmp/chromium-testshell-command-line"

.field private static final CONTENTVIEW_RENDERVIEW_INIT_DELAY:J = 0x32L

.field private static final CONTENTVIEW_RENDERVIEW_INIT_ID:I = 0x1bc

.field private static ENABLE_POWER_CONTROL:Z = false

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_TRANSLATION_ENGINE_TYPE:Ljava/lang/String; = "translation_engine_type"

.field public static final EXTRA_VALUE_ENGINE_TECHNICAL_TYPE:I = 0x3

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final FIRST_INSTANCE_INDEX:I = 0x1

.field private static final FOUR_INSTANCE_INDEX:I = 0x4

.field private static final HTTP_URI_PREFIX:Ljava/lang/String; = "http://"

.field private static final INVALID_INSTANCE_INDEX:I = 0x0

.field public static IS_SYNC_ACTIVE_AND_PENDING:Z = false

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MSG_CLEAR_CACHE:I = 0x1

.field private static final NETWORK_ERROR_REQUEST:I = 0x8

.field public static PC_UI:Z = false

.field private static PREFS_NAME:Ljava/lang/String; = null

.field private static final SBROWSER_AUTHORITY:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field static final SBROWSER_OPBOOKMARK_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SECOND_INSTANCE_INDEX:I = 0x2

.field public static final SYNC_OPENED_PAGES:I = 0x41

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRUSTED_APPLICAION_CODE_EXTRA:Ljava/lang/String; = "trusted_application_code_extra"

.field private static final VOICE_RECOGNITION_RESULT:I = 0x68

.field private static final ZERO_TAB_COUNT:I

.field private static mCmdLine:Lorg/chromium/content/common/CommandLine;

.field public static mShowBookmark:Z

.field private static notificationForShortcutFavicon:[I

.field private static notificationForShortcutTouchicon:[I

.field private static notifications:[I

.field private static sBrowserMainActivityInstancesCount:I

.field private static sIsFirstIndexNeedToBeAssignedNext:Z


# instance fields
.field private final LANDSCAPE_SCROLL_Y:Ljava/lang/String;

.field private final PORTRAIT_SCROLL_Y:Ljava/lang/String;

.field public SignedInWithDialog:Z

.field autoHide_enable_pref_app:Z

.field autoHide_enable_pref_engine:Z

.field private completedSync:Ljava/lang/String;

.field public deviceMode:I

.field dispMatForPrint:Landroid/util/DisplayMetrics;

.field private eventKeyCode:I

.field public isBackFromTabManager:Z

.field private isDBThumbnailLoaded:Z

.field isEasyMode:Z

.field private isMagazineEnabled:Z

.field isPrintInProgress:Z

.field private isSyncStarted:Z

.field private keyMetaState:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mActivityPaused:Z

.field private mAddressbar:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackgroundColorObserver:Landroid/database/ContentObserver;

.field private final mBookmarkHandler:Landroid/os/Handler;

.field private mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

.field private mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

.field public mColorize:Z

.field private mConecttedDock:Z

.field public mContentFullScreenManager:Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field mCurrentWidth:I

.field private mDestroyed:Z

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

.field private mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

.field private mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;

.field private mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

.field private mInitializerContinuationIntent:Landroid/content/Intent;

.field private mIsAirBrowseRunning:Z

.field private final mIsBookmarkedrunnable:Ljava/lang/Runnable;

.field private mIsComingFromOnResumeState:Z

.field private mIsDestroyed:Z

.field private mIsFullScreen:Z

.field mIsHdmiConnected:Z

.field private mIsIncognito:Z

.field private final mIsMobilePrintAvailable:Z

.field private mIsReloadTabCaseSkipped:Z

.field private mIsTabSwipeWithAirBrowseGesture:Z

.field private mIsXLarge:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

.field private mMaxTabAlertDialog:Landroid/app/AlertDialog;

.field private mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

.field private mMenu:Landroid/view/Menu;

.field private mMultiTabLandScapeScrollY:I

.field private mMultiTabPortraitScrollY:I

.field private mMultiWindowTabCreated:Z

.field private mNetworkConnectivityReceiver:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

.field private final mNotificationForShortcutFavicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private final mNotificationForShortcutTouchicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mOtherInstanceTabStateClearState:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field public mPrefs:Landroid/content/SharedPreferences;

.field mPrevWidth:I

.field private mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

.field private mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

.field private mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mReusableLocalInstanceId:I

.field private mSBrowserMobileAppContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

.field private mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

.field private mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

.field private mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

.field mTabSwitchBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mToBeDeleted:Z

.field private mToolbarBookmarkState:I

.field private mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

.field private mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

.field private mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

.field private mUi:Lcom/sec/android/app/sbrowser/common/UI;

.field private mWebNotificationUIManager:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;

.field private powermanager:Landroid/os/PowerManager;

.field private resetTabsDB:Z

.field public signInDialog:Landroid/app/Dialog;

.field private syncObserverHandle:Ljava/lang/Object;

.field private syncing:Z

.field private tabSyncing:Z

.field public tabmanagerBundle:Landroid/graphics/Bitmap;

.field private undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

.field private undoBarHandler:Landroid/os/Handler;

.field private unodBarRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LOGTAG:Ljava/lang/String;

    sput-boolean v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->ENABLE_POWER_CONTROL:Z

    sput-boolean v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->IS_SYNC_ACTIVE_AND_PENDING:Z

    sput-boolean v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mShowBookmark:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    sput-boolean v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->PC_UI:Z

    const-string v0, "Cloud Services Preference"

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->PREFS_NAME:Ljava/lang/String;

    const-string v0, "content://com.sec.android.app.sbrowser.operatorbookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->SBROWSER_OPBOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-class v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/16 v1, 0xd

    aput v1, v0, v3

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/16 v1, 0x9

    aput v1, v0, v4

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/16 v1, 0xb

    aput v1, v0, v5

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/4 v1, 0x3

    const/16 v2, 0x18

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/4 v1, 0x4

    const/16 v2, 0x1f

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    const/4 v1, 0x6

    const/16 v2, 0x27

    aput v2, v0, v1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mCmdLine:Lorg/chromium/content/common/CommandLine;

    sput v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    sput-boolean v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sIsFirstIndexNeedToBeAssignedNext:Z

    new-array v0, v4, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notificationForShortcutTouchicon:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notificationForShortcutTouchicon:[I

    const/16 v1, 0x1d

    aput v1, v0, v3

    new-array v0, v4, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notificationForShortcutFavicon:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notificationForShortcutFavicon:[I

    const/16 v1, 0x1a

    aput v1, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isSyncStarted:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->completedSync:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isDBThumbnailLoaded:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivityPaused:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mOtherInstanceTabStateClearState:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mColorize:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mConecttedDock:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsAirBrowseRunning:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsHdmiConnected:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsIncognito:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsXLarge:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiWindowTabCreated:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mResources:Landroid/content/res/Resources;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->powermanager:Landroid/os/PowerManager;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->resetTabsDB:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->SignedInWithDialog:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->autoHide_enable_pref_app:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->autoHide_enable_pref_engine:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrevWidth:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mCurrentWidth:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSavedInstanceState:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsDestroyed:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    const-string v0, "portraitScrollY"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->PORTRAIT_SCROLL_Y:Ljava/lang/String;

    const-string v0, "landscapeScrollY"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LANDSCAPE_SCROLL_Y:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isPrintInProgress:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isEasyMode:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->dispMatForPrint:Landroid/util/DisplayMetrics;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentFullScreenManager:Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMagazineEnabled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsTabSwipeWithAirBrowseGesture:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->deviceMode:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBackFromTabManager:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutTouchicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutFavicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToBeDeleted:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->signInDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$42;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$43;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$43;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$44;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unodBarRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setScreenMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setXlargeUIFlag(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->checkMobilePrintAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsMobilePrintAvailable:Z

    return-void
.end method

.method public static IsFirstIndexNeedToBeAssignedNext()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sIsFirstIndexNeedToBeAssignedNext:Z

    return v0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/accounts/Account;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAndSetSyncValue(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutTouchicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notificationForShortcutTouchicon:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrFaviconController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z

    return v0
.end method

.method static synthetic access$2000()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notificationForShortcutFavicon:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutFavicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->shareUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;)Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setClearTabStateOfOtherInstance(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiWindowTabCreated:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    return v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->shouldOpenUrlInSameTab(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAddressbar:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    return-object v0
.end method

.method static synthetic access$5000()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBrowserAllowedByDPM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBrowserAllowedBySharedPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5902(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mConecttedDock:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->completedSync:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    return p1
.end method

.method static synthetic access$6600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsDestroyed:Z

    return v0
.end method

.method private broadCastSSRMStatus(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Browser_showMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkHWAcceleration()V
    .locals 4

    const/high16 v3, 0x100

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hardware_acceleration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "hardware-acceleration"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void
.end method

.method private checkIfSameURLisAlreadyOpened(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final checkMobilePrintAvailable()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.mobileprint"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deregisterDevicePolicyReceiver()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "deregisterDevicePolicyReceiver()"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private static enableStrictMode()V
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->enableDefaults()V

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    const-string v0, ""

    const-string v4, "death"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4, v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method private freeMemory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freeMemory()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->freeMemory()V

    goto :goto_0
.end method

.method private getAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->getPowserControlPopup()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getAndSetSyncValue(Landroid/accounts/Account;)Z
    .locals 6

    const/16 v5, 0xbc1

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-static {p1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SBrowserSync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Initial checked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SYNC_VALUE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v5, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncInternetDataValue(Z)V

    new-instance v2, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->startTabSyncTimer()V

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SBrowserSync"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Initial unchecked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SYNC_VALUE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3, v5, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSyncInternetDataValue(Z)V

    move v1, v2

    goto :goto_0
.end method

.method public static getCommandLine()Lorg/chromium/content/common/CommandLine;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mCmdLine:Lorg/chromium/content/common/CommandLine;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mCmdLine:Lorg/chromium/content/common/CommandLine;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mCmdLine:Lorg/chromium/content/common/CommandLine;

    return-object v0
.end method

.method private getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    return-object v0
.end method

.method private getTarget(Lcom/sec/android/app/sbrowser/common/DataUri;)Ljava/io/File;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dat"

    const-string v1, "yyyy-MM-dd-HH-mm-ss-"

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isDownloadInternalMemory()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-nez v8, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v0

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    return-object v9
.end method

.method private getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    return-object v0
.end method

.method public static getTotalInstancesCounter()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    return v0
.end method

.method private getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private hideSuggestions()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->hideSuggestions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hideUndoBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    :cond_0
    return-void
.end method

.method private initSyncObserver()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v0, 0x0

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_0

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    aget-object v0, v4, v7

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAndSetSyncValue(Landroid/accounts/Account;)Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-string v5, "current_sync"

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z

    if-nez v4, :cond_6

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "sync_status"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncObserverHandle:Ljava/lang/Object;

    if-nez v4, :cond_5

    const/4 v4, 0x7

    new-instance v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncObserverHandle:Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncing:Z

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabSyncing:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "current_sync"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->completedSync:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "sync_status"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "current_sync"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private initializeEdgeGlowEffectFlag(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "edgeglow_enabled_engine"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEdgeGlowEffectFeatureEngineFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEdgeGlowEffectFeatureEngineFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "edgeglow_enabled_engine"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setEdgeGlowEffectFeatureEngineFlag(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEdgeGlowEffectFeatureEngineFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable_edge_gloweffect"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/chromium/content/common/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable_edge_gloweffect"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lorg/chromium/content/common/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeEnableDoubleTapPatentFlag(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "enable_double_tap_patent"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableDoubleTapPatentFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableDoubleTapPatentFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "enable_double_tap_patent"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setEnableDoubleTapPatentFlag(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnableDoubleTapPatentFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable_double_tap_patent"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/chromium/content/common/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable_double_tap_patent"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lorg/chromium/content/common/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeEnableReaderFlag(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "enable_reader"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getReaderStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "enable_reader"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setReaderStatus(Z)V

    return-void
.end method

.method private initializeMultiwindowAutoHide()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$37;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$37;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    goto :goto_0
.end method

.method private initializeParallelCanvas(Landroid/app/Activity;)V
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "parallel_canvas_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "parallel_canvas_enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "disable-parallel-canvas-mode"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->appendSwitch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeRemoteDebugging(Landroid/app/Activity;)V
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "remote_debug_enabled_engine"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "remote_debug_enabled_engine"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "enable-remote-debugging"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initializeToolbarSwipe()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabSwipeStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "tabswipe_enabled"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabSwipeStatus()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "tabswipe_enabled"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v2

    new-instance v4, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;-><init>(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/IToolbarSwipeHandler;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v4, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->initializeSwipeUi(Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;)V

    :cond_0
    return-void
.end method

.method private initializeUiCompositor(Landroid/app/Activity;)V
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "uicompositor_enabled"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "uicompositor_enabled"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v3

    const-string v4, "disable-single-compositor"

    invoke-virtual {v3, v4}, Lorg/chromium/content/common/CommandLine;->appendSwitch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBitmapBufferDataBlank(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-object v1, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isBrowserAllowedByDPM()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBrowserAllowedByDPM() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private isBrowserAllowedBySharedPreference()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "AllowBrowser"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBrowserAllowedBySharedPreference() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private notifyActivityState(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->notifyActivityState(I)V

    :cond_0
    return-void
.end method

.method private onShowBookmarkResult(ILandroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    const/4 v7, -0x1

    if-eq p1, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "TYPE"

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v7, "URL"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v7, "URLS"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v3, v5, v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    sget-object v8, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {v7, v3, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postInitLibLoad()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SBrowserPhoneCVHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserPhoneCVHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateFullScreenWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$7;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1bc

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private recycleTabThumbnail()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->RecycleTabManagerFullBitmap()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->RecycleTabManagerFullBitmap()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDevicePolicyReceiver()V
    .locals 3

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v2, "registerDevicePolicyReceiver()"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerResources()V
    .locals 5

    const v4, 0x7f0c0054

    const v3, 0x7f0a0010

    const v2, 0x7f020219

    const-string v0, "R.string.actionbar_textselection_title"

    const v1, 0x7f0c0049

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.actionbar_share"

    invoke-static {v0, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.actionbar_find"

    const v1, 0x7f0c0055

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.actionbar_web_search"

    const v1, 0x7f0c004a

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.text_select_handle_br_left_revers"

    const v1, 0x7f0201d2

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.text_select_handle_br_right"

    const v1, 0x7f0201d3

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.text_select_handle_middle"

    const v1, 0x7f0201d4

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.id.pickers"

    invoke-static {v0, v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.array.official_command_line"

    const v1, 0x7f07007d

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.ic_menu_share_holo_light"

    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_action_bar_find_page"

    const v1, 0x7f0201f2

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.ic_menu_search_holo_light"

    invoke-static {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_action_bar_find_page_tooltip"

    const v1, 0x7f0201f4

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.actionbar_smart_search"

    const v1, 0x7f0c01e8

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_action_bar_icon_smart_search"

    const v1, 0x7f020213

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.ic_menu_share_holo_dark"

    const v1, 0x7f0200a8

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.ic_menu_search_holo_dark"

    invoke-static {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.layout.date_time_picker_dialog"

    const v1, 0x7f040033

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.id.datePicker"

    const v1, 0x7f0a0022

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.id.timePicker"

    const v1, 0x7f0a0023

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.date_picker_dialog_set"

    const v1, 0x7f0c0082

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.date_picker_dialog_clear"

    const v1, 0x7f0c0083

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.date_time_picker_dialog_title"

    const v1, 0x7f0c0084

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.month_picker_dialog_title"

    const v1, 0x7f0c0085

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.layout.month_picker"

    const v1, 0x7f04004e

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.id.pickers"

    invoke-static {v0, v3}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.id.month"

    const v1, 0x7f0a0024

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.id.year"

    const v1, 0x7f0a0025

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_text_select_handle_left"

    const v1, 0x7f0202c0

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_text_select_handle_left_top"

    const v1, 0x7f0202c1

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_text_select_handle_middle"

    const v1, 0x7f0202c2

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_text_select_handle_right"

    const v1, 0x7f0202c3

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.drawable.tw_text_select_handle_right_top"

    const v1, 0x7f0202c4

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.layout.month_picker_dialog"

    const v1, 0x7f04004f

    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const-string v0, "R.string.actionbar_share"

    invoke-static {v0, v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerResourceId(Ljava/lang/String;I)V

    const v0, 0x7f020072

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerAirViewMagnifierBigResourceId(I)V

    const v0, 0x7f020074

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerAirViewMagnifierSmallResourceId(I)V

    const v0, 0x7f020073

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerAirViewMagnifierBigResourceId_L(I)V

    const v0, 0x7f020075

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->registerAirViewMagnifierSmallResourceId_L(I)V

    return-void
.end method

.method private sendContextMenuCreatedBroadcast(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "tabId"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private sendSyncCompletedMessages()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$4;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setBatteryADC(Z)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$SetBatteryADCTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$SetBatteryADCTask;-><init>(ZLcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$SetBatteryADCTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setClearTabStateOfOtherInstance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mOtherInstanceTabStateClearState:Z

    return-void
.end method

.method public static setFirstIndexNeedToBeAssignedNext(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sIsFirstIndexNeedToBeAssignedNext:Z

    return-void
.end method

.method private setSecPowerControl()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->ENABLE_POWER_CONTROL:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->powermanager:Landroid/os/PowerManager;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mColorize:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$25;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$25;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerSavingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$26;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$26;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBackgroundColorObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPowerSavingObserver:Landroid/database/ContentObserver;

    const-string v1, "psm_switch"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBackgroundColorObserver:Landroid/database/ContentObserver;

    const-string v1, "psm_background_colour"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private shareUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "theme"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0056

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private shouldOpenUrlInSameTab(Landroid/content/Intent;)Z
    .locals 6

    const-string v4, "com.android.browser.application_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string v4, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->checkIfSameURLisAlreadyOpened(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "create_new_tab"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "android.intent.action.SBROWSER_VIEW_FROM_READER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.SBROWSER_VIEW_FOR_SAVED_LIST"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showPlaceHolderDuringPrint()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->dispMatForPrint:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->dispMatForPrint:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->dispMatForPrint:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->prepareAndShowPlaceHolderIfNeeded(II)V

    :cond_0
    return-void
.end method

.method private showShortToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showUndoBar()V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUndoBarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const v3, 0x7f0a0079

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-direct {v3, v2, p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0239

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unodBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1b58

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startNotificationHandler()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$27;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$27;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method private tabNavigationOnDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    :cond_0
    return-void
.end method

.method private updateFavoritAppWidget()V
    .locals 12

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "favoriteappwidgetthumbnail.bmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Not exists"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.sbrowser.widget.UPDATE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :goto_2
    move-object v4, v5

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :goto_3
    :try_start_7
    sget-object v9, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v10, "MalformedURLException Exception in copyImage"

    invoke-static {v9, v10, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    :goto_4
    :try_start_9
    sget-object v9, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v10, "IOException in copyImage"

    invoke-static {v9, v10, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_7
    if-eqz v0, :cond_0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v4, :cond_8

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_9
    :goto_6
    throw v9

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_1

    :catch_8
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v9

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v9

    move-object v4, v5

    move-object v0, v1

    goto :goto_5

    :catch_9
    move-exception v2

    move-object v0, v1

    goto :goto_4

    :catch_a
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_4

    :catch_b
    move-exception v2

    move-object v0, v1

    goto :goto_3

    :catch_c
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_3
.end method

.method private updateToolBarViewOnResumeTabMngr()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isQuickLaunchPageSet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getPrevTabCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->refreshTabCounter()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/UI;->updateView(I)V

    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createToolBarViewTreeObserver(I)V

    goto :goto_0
.end method

.method public static updateTotalInstancesCounter()V
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    return-void
.end method

.method private waitForDebugger()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "wait-for-java-debugger"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for Java debugger to connect..."

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "Java debugger connected. Resuming execution."

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public DisplayTabPreview()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->displayTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V

    goto :goto_0
.end method

.method public HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsDestroyed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeaturePrefFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v2, "ToolBarAutoHider : HideUrlBarCmdReq sending updated params Start "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_hidden:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isEasyMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isEasyMode:Z

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    :cond_2
    return-void
.end method

.method public OnDragEventDelegate(Landroid/view/DragEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider :OnDragEvent, DragEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->OnDragEventDelegate(Landroid/view/DragEvent;)V

    return-void
.end method

.method public OnHoverEventDelegate(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider :OnHoverEvent, MotionEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->OnHoverEventDelegate(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->OnReceiveBitmapFromCache(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public OnScrollBegin(Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : OnScrollBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->OnScrollBegin(Z)V

    return-void
.end method

.method public OnScrollEnd(II)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : OnScrollEnd :visible_urlbar_height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "web_y ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/UI;->OnScrollEnd(II)V

    return-void
.end method

.method public OnTouchEventDelegate(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarAutoHider : OnTouchEventDelegate MotionEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->OnTouchEventDelegate(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public OnUrlBarActive()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "ToolBarAutoHider : OnUrlBarActive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->OnUrlBarActive()V

    return-void
.end method

.method public OnUrlBarBitmapUpdated()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "ToolBarAutoHider : OnUrlBarBitmapUpdated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->onUrlBarBitmapUpdated()V

    return-void
.end method

.method public addBookmark()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToBeDeleted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v6, "getControl().getCurrentTab() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c025d

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getProgress()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c02e6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    if-nez v5, :cond_6

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToBeDeleted:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->deleteBookmarkFromToolbar(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "url"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Most visited"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "title"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v1

    move-object v0, v4

    const/4 v5, -0x1

    if-eq v1, v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getNavigationHistory()Lorg/chromium/content/browser/NavigationHistory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/chromium/content/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content/browser/NavigationEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v5, "OriginalUrl"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const/16 v6, 0xc

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "title"

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public addBookmarkFromPinned(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public addShortcut(Lorg/chromium/content/browser/ContentView;)V
    .locals 2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrTouchiconController;->getInstance()Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lorg/chromium/content/browser/ContentView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public askQuit()V
    .locals 4

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v2, "askQuit() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c007c

    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$35;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$35;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0088

    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$34;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$34;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public captureThumbnail()Landroid/graphics/Bitmap;
    .locals 20

    sget-object v15, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v16, "captureThumbnail"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v8

    :cond_0
    const/4 v15, 0x2

    new-array v2, v15, [I

    const/4 v15, 0x0

    aput v9, v2, v15

    const/4 v15, 0x1

    aput v8, v2, v15

    const/4 v15, 0x0

    aget v15, v2, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    const/4 v15, 0x1

    aget v15, v2, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    :cond_1
    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_2
    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v15

    invoke-virtual {v15}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, v2, v18

    const/16 v19, 0x1

    aget v19, v2, v19

    invoke-virtual/range {v15 .. v19}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090083

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090084

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090091

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    mul-int v15, v14, v8

    div-int v5, v15, v9

    mul-int v15, v14, v10

    div-int v7, v15, v11

    sget-object v15, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "width  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Height "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  mThumbwidth "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v5, v7, :cond_4

    move v7, v5

    :cond_4
    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBitmapBufferDataBlank(Landroid/graphics/Bitmap;)Z

    move-result v15

    if-nez v15, :cond_8

    if-eqz v13, :cond_5

    :try_start_1
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v13, 0x0

    :cond_5
    const/4 v15, 0x1

    invoke-static {v1, v14, v5, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v0, v14, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    if-ne v13, v12, :cond_6

    sget-object v15, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "in case, address of bitmap "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", and address of thumbBmpImg  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "is same."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0201d6

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v12, 0x0

    :cond_8
    move-object v15, v13

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-object v15, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v16, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v4

    sget-object v15, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v16, "OutOfMemoryError while updating the history thumbnail."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public captureThumbnailForPinned()Landroid/graphics/Bitmap;
    .locals 15

    sget-object v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v11, "captureThumbnail"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09002f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090030

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v5

    :cond_0
    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v10, 0x0

    aput v6, v1, v10

    const/4 v10, 0x1

    aput v5, v1, v10

    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    const/4 v10, 0x1

    aget v10, v1, v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    :cond_1
    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v10

    invoke-virtual {v10}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, v1, v13

    const/4 v14, 0x1

    aget v14, v1, v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    mul-int/2addr v10, v7

    div-int v4, v10, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v10, v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v11, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    move-object v10, v0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v10, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v11, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public changeToIncognitoMode(Lorg/chromium/content/browser/ContentView;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$12;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lorg/chromium/content/browser/ContentView;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDoNotShowIncognitoCheck()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040049

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a015e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$13;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$13;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c016f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c003d

    new-instance v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$14;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$14;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public checkDsacPsRestricted()V
    .locals 5

    const-string v2, "ril.restricted"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSAC PS Restriction isPsRestricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "OK"

    new-instance v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$36;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$36;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c01a5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public checkIfAlreadyLoggedInCloudServer(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "LoggedIn"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkMultiTabOnResume()V
    .locals 0

    return-void
.end method

.method public clearCurrentTabHistory()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setUrlBarStateToNormal()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->clearCurrentTabHistory()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public clearUndoIfShown(Landroid/view/MotionEvent;)Z
    .locals 12

    const v11, 0x7f0a007b

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v8, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUndoBarLayout()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [I

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget v8, v0, v9

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_2

    aget v8, v0, v9

    add-int/2addr v8, v7

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_2

    aget v8, v0, v10

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_2

    aget v8, v0, v10

    add-int/2addr v8, v4

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setPressed(Z)V

    move v8, v9

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setPressed(Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->undoFromToolbar(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideUndoBar()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unodBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v8, v10

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->donotUndoFromToolbar(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideUndoBar()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unodBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    move v8, v9

    goto :goto_0
.end method

.method public clearUnusedTabBitmap()V
    .locals 10

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->ismDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_TAB_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Instance"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "TabRestore"

    const-string v8, "going to delere function"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_5

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "TabRestore"

    const-string v8, "deleting"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/io/File;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Instance"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_3
    array-length v7, v1

    if-ge v2, v7, :cond_0

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "TabRestore"

    const-string v8, "deleting"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public closeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeAllTabs()V

    return-void
.end method

.method public closeAllTabsForMultiInstance()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onPauseCloseTabs()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->access$6300(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V

    :cond_0
    return-void
.end method

.method public closeCurrentTab()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    return-void
.end method

.method public createContentViewListAdapter(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "is_incognito_selected"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/IContentViewController;ZZ)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setContentViewListAdapterHashMapByContextID(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    return-void
.end method

.method public createNewMultiWindowTab()V
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_MENU:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v4

    const-string v5, "enable-samsung-multiwindow"

    invoke-virtual {v4, v5}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiWindowTabCreated:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMultiWindowRestored()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "chrome://tabspreview/"

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "chrome://tabspreview/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiWindowTabCreated:Z

    :cond_1
    return-void
.end method

.method public createNewWindow()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "http://www.google.com"

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public createNewWindowWithURL()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_0
    return-void
.end method

.method public createShortcutWithFavicon()V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v8

    :cond_1
    const/4 v2, 0x0

    if-eqz v8, :cond_2

    const/4 v1, 0x0

    array-length v3, v8

    invoke-static {v8, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0001

    const v4, 0x7f0b0002

    const v5, 0x7f0b0003

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getShortcutToBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IIILandroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public createShortcutWithTouchicon()V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->GetTouchiconData(Ljava/lang/String;)[B

    move-result-object v8

    :cond_1
    const/4 v2, 0x0

    if-eqz v8, :cond_2

    const/4 v1, 0x0

    array-length v3, v8

    invoke-static {v8, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0001

    const v4, 0x7f0b0002

    const v5, 0x7f0b0003

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getShortcutToBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IIILandroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public createToolBarViewTreeObserver(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    const/16 v1, 0x258

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->createToolBarViewTreeObserver(I)V

    :cond_0
    return-void
.end method

.method deleteThumbnail(I)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_TAB_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public dismissMenuOnAutoHideUrlBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->dismissMenuOnAutoHideUrlBar()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->eventKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->keyMetaState:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->isFindTextToolbarShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->stopFindAndExitWhenShown()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->isFindTextToolbarShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->createPopupMenu()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->requestFocus()Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_2
        0xe2 -> :sswitch_3
        0xe6 -> :sswitch_3
        0xe7 -> :sswitch_3
    .end sparse-switch
.end method

.method public displayMaximumTabsAlertDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c00e4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f0c00e7

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003d

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$21;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$21;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$20;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$20;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const v0, 0x7f0c00e2

    goto :goto_1
.end method

.method public displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f04004d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a016a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$22;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$22;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0a0169

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0c00e7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0c00e4

    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c003d

    new-instance v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$23;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$23;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const v4, 0x7f0c00e2

    goto :goto_0
.end method

.method public doRegisterAirTurnListener()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->registerAirTurnListener()V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    const-string v0, "CscFeature_Web_AddOptionToTerminate"

    invoke-static {v0}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CscFeature_Web_SupportOfflineStartupPage"

    invoke-static {v0}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->closeAllTabs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CscFeature_Web_EnablePromptToExit"

    invoke-static {v0}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->askQuit()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBottomBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBarEasymode()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBarEasymode()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBottomBarUi()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getWindowMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBarEasymode()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBar()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getBottomBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getBottomBarUi()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    return-object v0
.end method

.method public getClearTabStateOfOtherInstance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mOtherInstanceTabStateClearState:Z

    return v0
.end method

.method public getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    return-object v0
.end method

.method public getContentHolderHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    goto :goto_0
.end method

.method public getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method public getControllerPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Lorg/chromium/content/browser/ContentView;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDeviceProvisionState()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getDeviceState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->deviceMode:I

    return v0
.end method

.method public getEasyModeFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isEasyMode:Z

    return v0
.end method

.method public getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentFullScreenManager:Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    return-object v0
.end method

.method public getGestureAirTurnListener()Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    return-object v0
.end method

.method public getHeightBottomToolbar()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getBottomToolbarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getBottomToolbarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getHeightControlContainer()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getControlContainer()Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getControlContainer()Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ControlContainer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getHomeScreenMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getHomeScreenMode()I

    move-result v0

    return v0
.end method

.method public getInstanceIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    return v0
.end method

.method public getIsAirBrowseRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsAirBrowseRunning:Z

    return v0
.end method

.method public getIsBackFromTabManager()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBackFromTabManager:Z

    return v0
.end method

.method public getIsMobilePrintAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsMobilePrintAvailable:Z

    return v0
.end method

.method public getKeyCodeEvent()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->eventKeyCode:I

    return v0
.end method

.method public getKeyMetaState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->keyMetaState:Z

    return v0
.end method

.method public getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    return-object v0
.end method

.method public getMainActivityContextId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMainToolBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getMainToolBarView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getMemoryUsageMonitor()Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    return-object v0
.end method

.method public getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserMobileAppContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserMobileAppContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserMobileAppContext:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    return-object v0
.end method

.method public getModel()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getMultiTabLandscapeScrollY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiTabLandScapeScrollY:I

    return v0
.end method

.method public getMultiTabPortraitScrollY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiTabPortraitScrollY:I

    return v0
.end method

.method public getNetworkConnectivityReceiver()Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNetworkConnectivityReceiver:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNetworkConnectivityReceiver:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNetworkConnectivityReceiver:Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

    return-object v0
.end method

.method public getPrintState()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSBrowserTabAnimationManager()Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    return-object v0
.end method

.method public getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getSecurityLevel(Lorg/chromium/content/browser/ContentViewCore;)I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTabPreview()Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    return-object v0
.end method

.method public getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarBitmap()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarBitmap()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    goto :goto_0
.end method

.method public getUi()Lcom/sec/android/app/sbrowser/common/UI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    return-object v0
.end method

.method public getUtilityCheckForHideUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->checkUtilityConditionsForHideUrl()Z

    move-result v0

    return v0
.end method

.method public getWindowMode()I
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_internet"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public gotoHistory()V
    .locals 0

    return-void
.end method

.method public gotohomepage()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "http://www.google.com"

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "about:blank"

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsIncognito:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsIncognito:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuationIntent:Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onNewIntent(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->hideKeyboard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initLocaleObserver()V
    .locals 3

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$5;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public initializeCVHolder(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->loadLibrary()V

    :try_start_0
    invoke-static {}, Lorg/chromium/content/app/LibraryLoader;->ensureInitialized()V
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->postInitLibLoad()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto :goto_0
.end method

.method public initializeLayerPositions()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "ToolBarAutoHider : initializeLayerPositions "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setHideUrlBarListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/UI;->updateView(I)V

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setUrlBarActive(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/UI;->setUrlBarActiveFlag(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->setStateofURL(I)V

    return-void
.end method

.method public initializeUI()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/UI;->initializeUI(Landroid/content/Context;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getSbrContentViewRenderView()Lorg/samsung/content/sbrowser/SbrContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/samsung/content/sbrowser/SbrContentViewRenderView;->setSurfaceChangeListener(Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->setSynchronizationObject(Lorg/samsung/content/sbrowser/SbrContentViewRenderView;)V

    :cond_0
    return-void
.end method

.method public isBookMarkShown()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mShowBookmark:Z

    return v0
.end method

.method public isConecttedDock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mConecttedDock:Z

    return v0
.end method

.method public isCurrentTabIncognito()Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDBThumbnailLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isDBThumbnailLoaded:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsFullScreen:Z

    return v0
.end method

.method public isMaxTabLimitReached()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getOtherInstanceRestorableTabCounter()I

    move-result v2

    if-lt v1, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    const v4, 0x7f0c00e9

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    :goto_0
    return v3

    :cond_0
    if-ge v1, v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v5

    if-ne v5, v3, :cond_2

    add-int v5, v2, v1

    if-lt v5, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-lt v1, v0, :cond_3

    const v4, 0x7f0c00e3

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public isMultiWindowRunning()Z
    .locals 3

    const-string v1, "1"

    const-string v2, "sys.multiwindow.running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPhoneMultiwindowEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickAccessHomePageSet()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pinned_most_visited"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isQuickLaunchPageSet()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v0

    return v0
.end method

.method public isSMultiWindow()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    return v1
.end method

.method public isSmallWindowApplicable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getsSmallWindowSize()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getWindowMode()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    const-string v2, "sys.multiwindow.running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSurfaceReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->isSurfaceViewReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabSwipeActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->isViewPagerActive()Z

    move-result v0

    goto :goto_0
.end method

.method public isTabSwitchUsingAirBrowseGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsTabSwipeWithAirBrowseGesture:Z

    return v0
.end method

.method public isUrlBarActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->isUrlBarActive()Z

    move-result v0

    return v0
.end method

.method public isUrlBookmarked(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isViewPagerDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->isViewPagerDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebNotification()Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "notifications"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isXLarge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsXLarge:Z

    return v0
.end method

.method public ismDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDestroyed:Z

    return v0
.end method

.method public launchHelp()V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v3, "helphub:section"

    const-string v4, "sbrowser"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "helphub:appid"

    const-string v4, "internet"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SBrowserMainActivity"

    const-string v4, "launchHelp canceled -- no help "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadLibrary()V
    .locals 2

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/local/tmp/chromium-testshell-command-line"

    invoke-static {v0}, Lorg/chromium/content/common/CommandLine;->initFromFile(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SbrCommandLine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SbrCommandLine;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/SbrCommandLine;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SbrCommandLine;->setInstance(Lcom/sec/android/app/sbrowser/common/SbrCommandLine;Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeEdgeGlowEffectFlag(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeEnableDoubleTapPatentFlag(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeEnableReaderFlag(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeUiCompositor(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeParallelCanvas(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeRemoteDebugging(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/content/browser/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/content/browser/ResourceExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ResourceExtractor;->startExtractingResources()V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$24;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$24;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setHomeScreenModeOnPostLibLoad()V

    return-void
.end method

.method protected loadUrl(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/LoadUrlParams;

    invoke-direct {v2, v0}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :cond_0
    return-void
.end method

.method public newIncognitoTab()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "http://www.google.com"

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0
.end method

.method public notifyPageUrlChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->onPageUrlChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->onPageUrlChanged(I)V

    return-void
.end method

.method public notifyPrintBegin(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->OnPrintBegin(II)V

    :cond_0
    return-void
.end method

.method public notifyPrintBitmap(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->printBitmapReceived(IZ)V

    :cond_0
    return-void
.end method

.method public notifyPrintEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->print()V

    :cond_0
    return-void
.end method

.method public notifyTabManagerBitmapUpdated(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->notifyBitmapUpdated(I)V

    :cond_0
    return-void
.end method

.method public notifyTabPrefetchCommitted(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->onTabPrefetchCommitted()V

    return-void
.end method

.method public notifyUrlCheckedForBookmark(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isUrlBookmarked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonLitup(Z)V

    goto :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 28

    sget-object v25, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v26, "APPLOGS: onActivityResult()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v25

    check-cast v25, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isReaderActive:Z

    :cond_0
    const/16 v25, 0x1d

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    const/16 v25, 0x41

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_1

    const-string v25, "tabUrl"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v25

    if-nez v25, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    sget-object v26, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v26

    invoke-interface/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_1
    :goto_0
    const/16 v25, 0x15

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    if-eqz v25, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_3

    if-eqz v5, :cond_3

    const-string v25, "readerContextmenuItemUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v25, Lorg/chromium/content/browser/LoadUrlParams;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Lorg/chromium/content/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/chromium/content/browser/ContentView;->loadUrl(Lorg/chromium/content/browser/LoadUrlParams;)V

    :cond_3
    const/16 v25, 0x16

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_4

    const-string v25, "readerContextmenuItemUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v25

    if-nez v25, :cond_4

    sget-object v13, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->openUrlInCurrentModel(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V

    :cond_4
    const/16 v25, 0x18

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_5

    const-string v25, "readerContextmenuItemUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->openImage(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Ljava/lang/String;)V

    :cond_5
    const/16 v25, 0x17

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_6

    const-string v25, "readerContextmenuItemUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->openIncognitoModeTab(Ljava/lang/String;)V

    :cond_6
    const/16 v25, 0x19

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_7

    const-string v25, "readerContextmenuItemUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->openImageInNewTab(Ljava/lang/String;)V

    :cond_7
    const/16 v25, 0x12

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_8

    const-string v25, "historySelectedItemUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v21

    if-eqz v21, :cond_8

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :cond_8
    const/16 v25, 0x1f

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    if-eqz p3, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_9

    const-string v25, "savePageUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v25, "savePageTitle"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v25, "savePageStoragePath"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v21

    if-eqz v21, :cond_9

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v20

    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->setReadingListItem(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :cond_9
    const/16 v25, 0x2b

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_a

    const-string v25, "savePageUrl"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v25, "savePageTitle"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v25, "savePageStoragePath"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v21

    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v20

    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/Tab;->setReadingListItem(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    :cond_a
    const/16 v25, 0x1e

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const-string v25, "savePageStoragePath"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-eqz v18, :cond_1b

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    if-eqz v23, :cond_c

    const-string v25, "content://"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c

    sget-object v25, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "READ_LATER_ACTIVITY_RESULT_NEWTAB_TO_SBMA :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v25

    if-nez v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    sget-object v26, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v26

    invoke-interface/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    goto :goto_1

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    sget v25, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e

    const v25, 0x7f0c00e9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    goto/16 :goto_0

    :cond_e
    const v25, 0x7f0c00e3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->recycleTabThumbnail()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/Tab;->setFullScreenBitmap()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v25

    if-eqz v25, :cond_10

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPrevTabId()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getPlaceholderView()Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    move-result-object v25

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateToolBarViewOnResumeTabMngr()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v11

    :cond_11
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v25

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v25

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPlaceholderViewAreaState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPrevTabId()I

    move-result v25

    move/from16 v0, v25

    if-eq v12, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPrevTabId()I

    move-result v25

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v25

    if-eqz v25, :cond_17

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPlaceholderViewAreaState(I)V

    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    sget-object v25, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_MAX_TAB_REACHED:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v25

    if-eqz v25, :cond_14

    :cond_14
    const-string v25, "result"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v25, "landscapeScrollY"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiTabLandScapeScrollY:I

    const-string v25, "portraitScrollY"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiTabPortraitScrollY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isTabCreationInProcess()Z

    move-result v25

    if-nez v25, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    if-eqz v25, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    if-eqz v25, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v26

    add-int v22, v25, v26

    if-nez v22, :cond_15

    sget-object v25, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v26, "APPLOGS: onActivityResult() - tabCount == ZERO_TAB_COUNT case"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    check-cast v25, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setPausedStateManually()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v20

    invoke-static {}, Lorg/samsung/base/Feature;->isQuickLaunchEnabled()Z

    move-result v25

    if-eqz v25, :cond_1

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v23

    const-string v25, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_16

    const-string v25, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    :cond_16
    sget-object v25, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v26, "APPLOGS: onActivityResult() -- mUi.showQuickLaunchView()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->refreshBitMap(I)V

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPrevTabId()I

    move-result v25

    move/from16 v0, v25

    if-ne v12, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    check-cast v25, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getIsBackFromTabManager()Z

    move-result v25

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->refreshBitMap(I)V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto/16 :goto_0

    :cond_1b
    const/16 v25, 0x13

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    if-eqz p3, :cond_1f

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_1f

    const-string v25, "historySelectedItemUrls"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_1f

    aget-object v7, v24, v8

    if-eqz v7, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v25

    if-nez v25, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    sget-object v26, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v14

    if-eqz v14, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v26

    invoke-interface/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_1c
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getGlobalTabCounter()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1c

    sget v25, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1e

    const v25, 0x7f0c00e9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    goto :goto_4

    :cond_1e
    const v25, 0x7f0c00e3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    goto :goto_4

    :cond_1f
    const/16 v25, 0xa

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onShowBookmarkResult(ILandroid/content/Intent;)V

    :cond_20
    const/16 v25, 0x28

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v25

    if-eqz v25, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/sbrowser/common/Tab;->showExtractPopupIfNeeded()V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onActivityResult(IILandroid/content/Intent;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderClick(Z)V

    :cond_23
    return-void
.end method

.method public onBackPressed()V
    .locals 15

    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v12, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->handleBackPressed()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->isTextSelected()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v12

    invoke-virtual {v12}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->clearTextSelection()V

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->removeTabPreview(Z)V

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/UI;->onBackPressed()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    if-nez v10, :cond_9

    sget-object v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v13, "onBackPressed : tab == null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    :try_start_0
    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v12

    if-nez v12, :cond_15

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_7
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto :goto_1

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentView;->canGoBack()Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v13, "onBackPressed : canGoBack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->goBack()V

    goto :goto_2

    :cond_a
    const-string v12, "CscFeature_Web_EnablePromptToExit"

    invoke-static {v12}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getModel()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v12

    const-string v13, "enable-samsung-multiwindow"

    invoke-virtual {v12, v13}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->askQuit()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_f

    invoke-virtual {v6, v10, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    goto/16 :goto_0

    :cond_c
    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    add-int v12, v2, v3

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->askQuit()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v4, v10, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-interface {v9, v10, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getLaunchType()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v12, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne v11, v12, :cond_10

    if-nez v0, :cond_10

    sget-object v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v13, "onBackPressed : FROM_EXTERNAL_APP"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewRenderView;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setIsfromExternal(Z)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v12, v10, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_2

    :cond_10
    sget-object v12, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq v11, v12, :cond_12

    sget-object v12, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq v11, v12, :cond_12

    sget-object v12, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq v11, v12, :cond_12

    sget-object v12, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS_OTHERS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-eq v11, v12, :cond_12

    sget-object v12, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    if-ne v11, v12, :cond_11

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_12

    :cond_11
    sget-object v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v13, "onBackPressed : NORMAL CASES"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_2

    :cond_12
    sget-object v12, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v13, "onBackPressed : FROM LINK or FROM LONG_PRESS or HAS_PARENT"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x1

    if-le v12, v13, :cond_13

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v12, v10, v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->closeTab(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getModel()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->unregisterAirTurnListener()V

    goto/16 :goto_2

    :cond_13
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_2

    :cond_14
    :try_start_1
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto/16 :goto_0

    :cond_15
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/UI;->isQuickLaunchPageSet()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getReadingListUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideUndoBar()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unodBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-eqz v3, :cond_4

    iput v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToBeDeleted:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonLitup(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->captureSoftBitmap()V

    goto :goto_0

    :cond_4
    iput v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarBookmarkState:I

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->undoBarHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unodBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToBeDeleted:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showUndoBar()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/sec/android/app/sbrowser/common/UI;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getUndoBarLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f0a0079

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showUndoBar()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->setContextMenuInfoToContentView(Lorg/samsung/content/sbrowser/SbrContentViewCore$SbrContentViewCoreContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsDestroyed:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isWebNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->resetTabsDB:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v2, "multitab_dragdrop_enabled"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultitabDragDrop()Z

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultitabDragDrop()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v2, "multitab_dragdrop_enabled"

    invoke-interface {v11, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    if-eqz v12, :cond_c

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    :goto_1
    sget v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    if-nez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSBrowserMobileApplication()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->createContentViewListAdapterHashMapIfNull()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/common/UI;->requestWindowFeature(Landroid/content/Context;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/common/UI;->getInstanceIdOnCreation(Landroid/os/Bundle;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createContentViewListAdapter(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/UI;->inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v2

    if-nez v2, :cond_d

    sget v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_6

    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error(Framework) :: Instance Count Should not be crossing 2 for Phone. Instance Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPLOGS: onCreate instance counter ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mReusableLocalInstanceId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initSyncObserver()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initLocaleObserver()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/chromium/content/browser/DeviceUtils;->addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->waitForDebugger()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->enableStrictMode()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFullScreen()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsFullScreen:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v2, "CscFeature_Web_ResetCookiesOnSimCardChanging"

    invoke-static {v2}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->loadLibrary()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-string v3, "ClearCookieData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v2, "NeedClearCookieData"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->clearBrowsingData(Lorg/samsung/chrome/browser/SbrChromeNativePreferences$OnClearBrowsingDataListener;ZZZZZ)V

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v2, "NeedClearCookieData"

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    new-instance v14, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Looper;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$2;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Handler;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v3, v4, v2}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->enable()V

    sget v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    new-instance v3, Lorg/chromium/content/browser/ActivityContentVideoViewDelegate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v3, v2}, Lorg/chromium/content/browser/ActivityContentVideoViewDelegate;-><init>(Landroid/app/Activity;)V

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->registerContentVideoViewContextDelegate(Lorg/chromium/content/browser/ContentVideoViewContextDelegate;)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->registerResources()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->checkHWAcceleration()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->startNotificationHandler()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeUI()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mWebNotificationUIManager:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    new-instance v2, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setSharedPreferenceValueFromNative()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setSecPowerControl()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->setDelegateControl()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/net/HttpRequestHeader;->init(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPLOGS: onCreate - SBrowser_instance object ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPLOGS: onCreate - SBrowser_instances counter ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeMultiwindowAutoHide()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/common/UI;Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentFullScreenManager:Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_DROP_ENABLED:Z

    goto/16 :goto_1

    :cond_d
    sget v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_6

    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error(Framework) :: Instance Count Should not be crossing 4 for Tablet. Instance Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "enable-samsung-multiwindow"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chrome://tabspreview/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isTabSwipeActive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/UI;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sendContextMenuCreatedBroadcast(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPrint:Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/PrintSec;->onCreateDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    const/16 v1, 0x1bc

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->onDestroy()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy instance counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReusableLocalInstanceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Context ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->removeSynchronizationObject()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->removeContentViewListAdapterHashMapByContextID(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMaxTabAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    sget v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->disable()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->clearContentViewListAdapterHashMap()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mWebNotificationUIManager:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mWebNotificationUIManager:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;->destroy()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mWebNotificationUIManager:Lcom/sec/android/app/sbrowser/common/WebNotificationUIManager;

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->onActivityDestroyed()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->syncObserverHandle:Ljava/lang/Object;

    :cond_b
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mDestroyed:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->unregisterAirTurnListener()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    :cond_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabCreateDeleteAnimation()Z

    move-result v0

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->destroyAll()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSBrowserTabAnimationManager:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onDestroy()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->access$1500(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V

    :cond_e
    const/16 v0, 0x8

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->destroy()V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->onActivityDestroyed()V

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->onDestroy()V

    :cond_11
    sget v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    if-lez v0, :cond_12

    sget v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy - SBrowser_instances counter ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->tabNavigationOnDestroy()V

    return-void
.end method

.method public onInputURLPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->checkUtilityConditionsForHideUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->isFindTextToolbarShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->requestFocus()Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->dismissPopupMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->requestFocus()Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->freeMemory()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/UI;->onMenuOpened(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onNewWindowPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$40;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$40;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->dismissPopupMenu()V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$41;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$41;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected onPageReload()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSupportWMLviaHtmlFeatureFlagStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getModel()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->reload()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->reload()V

    goto :goto_0
.end method

.method protected onPageStopped()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    iput-boolean v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->onActivityPause()V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBrowserSSRMManager:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->releaseDashmode()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUtilityCheckForHideUrl()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v7, "HIDEURL - ShowToolBarManually during setIndex Success"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/common/Tab;->setAssociatedToolbarDisplayState(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->unregisterReceiverForTabSwitching()V

    :cond_3
    sget-object v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPause instance counter = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mReusableLocalInstanceId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Context ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/UI;->onPause()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->unregisterMultiwindowBtnListener()V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v6

    if-ne v6, v9, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->unregisterAirTurnListener()V

    :cond_5
    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifyActivityState(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onPause()V
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->access$1400(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V

    :cond_6
    invoke-direct {p0, v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->broadCastSSRMStatus(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    if-eqz v6, :cond_7

    invoke-virtual {p0, v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->removeTabPreview(Z)V

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/NfcHandler;->unregister(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    sget-boolean v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->ENABLE_POWER_CONTROL:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->powermanager:Landroid/os/PowerManager;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->powermanager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-ne v0, v9, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setPaused(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->isActive()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->isActive()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getAlertDialog()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_9
    iput-object v11, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setPowserControlPopup(Landroid/app/AlertDialog;)V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/BrowserFeature;->useBrightness()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setSettingBrightness()V

    :cond_b
    invoke-direct {p0, v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setBatteryADC(Z)V

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMagazineEnabled:Z

    if-ne v6, v9, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFavoritAppWidgetThumbnail()V

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1, v9}, Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;->setActivityResumed(Z)V

    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v5, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->dismissExtractModePopup()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getNetworkConnectivityReceiver()Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;->unregisterReceiver(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/UI;->hidePopup()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideSuggestions()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->deregisterDevicePolicyReceiver()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v1, "VerificationLog"

    const-string v2, "onPrepareOptionsMenu, Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    const-string v1, "VerificationLog"

    const-string v2, "onPrepareOptionsMenu, stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onRenderProcessSwap(II)V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeatureFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarAutoHider : onRenderProcessSwap oldPid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "newPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateView(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/sbrowser/common/UI;->onRenderProcessSwap(II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAutoHideFeaturePrefFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getWindowMode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$38;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$38;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->reloadTabIfNecessary()V

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->onActivityResume()V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setBottomBarChildClicked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->enableMoreButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->registerReceiverForTabSwitching()V

    :cond_3
    sget-object v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APPLOGS: onResume instance counter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mReusableLocalInstanceId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Context ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->autoHideResume()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setBookmarkBtnClickable()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/mcafee/AnshinScan;->getAnshinScanSetting()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setReaderListButtonClicked(Z)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setBookmarkButtonClicked(Z)V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v5, v7}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setWindowManagerIconClicked(Z)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->registerMultiwindowBtnListener()V

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->notifyActivityState(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onResume()V
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->access$800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;)V

    :cond_7
    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->broadCastSSRMStatus(Z)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setBatteryADC(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/HttpRequestHeader;->updateAcceptlanguage()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMultiWindowRunning()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->multiWindowOnResume()V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->showActionBar()V

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->isAirViewMagnifier()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "finger_air_view"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    move v1, v6

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "finger_air_view_magnifier"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v3, v6

    :goto_1
    if-eqz v1, :cond_a

    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->airViewMagnifierHide()V

    :cond_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v5

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->registerAirTurnListener()V

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBrowserAllowedByDPM()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBrowserAllowedBySharedPreference()Z

    move-result v5

    if-nez v5, :cond_10

    :cond_d
    sget-object v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v6, "onResume : Browser is blocked by ActiveSync"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0c01a6

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showShortToast(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :cond_e
    move v1, v7

    goto :goto_0

    :cond_f
    move v3, v7

    goto :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->registerDevicePolicyReceiver()V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->resetTabsDB:Z

    if-eqz v5, :cond_11

    sget v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sBrowserMainActivityInstancesCount:I

    if-le v5, v6, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v2

    sget-object v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sBrowserMainActivityInstancesCount more than 1>>>>instanceIndex>>>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0xbc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    new-array v8, v7, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->resetTabsDB:Z

    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/sec/android/app/sbrowser/common/NfcHandler;->register(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    const-string v5, "wlan.wfd.status"

    const-string v8, "unknown"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "connected"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6, v7}, Lorg/chromium/content/browser/ContentView;->setUseDesktopUserAgent(ZZ)V

    :cond_12
    sput-boolean v7, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mShowBookmark:Z

    sget-boolean v5, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->ENABLE_POWER_CONTROL:Z

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    if-nez v5, :cond_13

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setSecPowerControl()V

    :cond_13
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->setPaused(Z)V

    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setFullScreen()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getWindowMode()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/sbrowser/common/UI;->updateEasyModeLayout(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->onResume()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/UI;->autoHideResumeSendBitmap()V

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$6;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_15
    new-instance v5, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0xbbe

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    new-array v8, v7, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderTaskManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceIdOnBrowserCreation(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getClientDeviceIdOnBrowserCreation(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->sendSyncCompletedMessages()V

    goto/16 :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState Tab saveEncryptionKey"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->saveEncryptionKey(Landroid/os/Bundle;)V

    const-string v0, "is_incognito_selected"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isIncognitoSelected()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "savedInstanceIndex"

    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState mReusableLocalInstanceId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReusableLocalInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onScrollStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->sUrlHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setUrlBarStateToNormal()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->requestFocus()Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showKeyboard(Landroid/view/View;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->isPopupMenuDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->dismissPopupMenu()V

    :cond_0
    return-void
.end method

.method public onSwap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->onSwap()V

    :cond_0
    return-void
.end method

.method public onTabClose(ILandroid/os/Bundle;)V
    .locals 2

    move v0, p1

    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$28;->start()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onTabClosed(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onTabClosed(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onTabCreated(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onTabCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onTabSelected(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "enable-samsung-multiwindow"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->onTabSelected(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onTabStateLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->shouldLoadFromDB()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$30;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$30;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$30;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$31;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$31;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$31;->start()V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v1, 0x14

    const/16 v0, 0xf

    if-lt p1, v0, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->freeMemory()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-lt p1, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMemoryUsageMonitor:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->handleBackgroundThreshold(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUndo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->undoFromToolbar(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "VerificationLog"

    const-string v1, "onWindowFocusChanged, Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setReaderButtonClickableIfNot()V

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->unRegisterContentVideoViewFocusDelegate()V

    new-instance v1, Lorg/chromium/content/browser/ActivityContentVideoViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/ActivityContentVideoViewDelegate;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/chromium/content/browser/ContentVideoView;->registerContentVideoViewFocusDelegate(Lorg/chromium/content/browser/ContentVideoViewContextDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setCurrentActiveSBrowserMainActivityContextIdString(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->registerAirTurnListener()V

    :cond_1
    :goto_0
    const-string v0, "VerificationLog"

    const-string v1, "onWindowFocusChanged, End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAirBrowseEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mGestureAirTurnListener:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->unregisterAirTurnListener()V

    goto :goto_0
.end method

.method public onWindowManagerPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->processTabManagerlaunch(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->dismissPopupMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/UI;->processTabManagerlaunch(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public openImageInNewTab(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "enable-samsung-multiwindow"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->setPrevioustab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->openUrlInCurrentModel(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V

    return-void
.end method

.method public openIncognitoModeTab(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "enable-samsung-multiwindow"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->setPrevioustab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v5

    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v2

    if-le v1, v2, :cond_1

    const v1, 0x7f0c00e9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->displayMaximumTabsAlertDialog(I)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    goto :goto_0
.end method

.method public openUrlInCurrentModel(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMaxTabLimitReached()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IIZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabIndexById(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :cond_0
    return-void
.end method

.method public pageReload()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onPageReload()V

    return-void
.end method

.method public pageStopped()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onPageStopped()V

    return-void
.end method

.method public prepareAndShowExtractPage(Z)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsExtractModeEnabled()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getExtractedPageSummary()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<head><meta charset=\"utf-8\"/><meta name=\"viewport\" content=\"width=device-width, minimum-scale=1.0,initial-scale=1.0, maximum-scale=10.0,user-scalable=1\"/>"

    const-string v2, "<style>.SISO_page {font-size: .938em; margin-top: 0px; word-wrap:break-word; text-align:justify;line-height: 1.5em;}.SISO_domain_name{font-size:12px; padding:5px 15px; color:  #94acaa;}.SISO_page-separator {display: none; font-size:10px;text-align:right;width:95%;color:#94acaa;padding-top:10px}.SISO_page-num {font-size:10px;color:#94acaa}.SISO_page-total {font-size:10px;color:#94acaa} body{ font-family: roboto; background-color: #f7f7f7;margin:0px;padding:0px;} #reader_content_div{ font-family: roboto; margin-bottom: 35px; margin-left: 10px; margin-right: 10px;} .SISO_header {font-size: 1.313em; margin-left: 14px; margin-bottom: 5px;margin-right: 14px;margin-top: 5px;line-height:1.5em;} div,table,tr,td {background-color:rgba(247,247,247,1) !important;background:none !important;} h1 { font-size: 1.17em; margin: .83em 0 } h2 { font-size: 1.17em; margin: .83em 0 } h3 { font-size: 1.0em; margin: 1.5em 0 } h4 { font-size: .83em; margin: 1.67em 0 } h5 { font-size: .75em; margin: 1.67em 0 } h6 { font-size: .75em; margin: 1.67em 0 } a{text-decoration: none;} .SISO_EXTRACT_HEADER { position:absolute;top:246px;left:0px;width:100%;height:84px;background-color:rgba(0,0,0,0.3)!important ; font-size: 20px; } .SISO_EXTRACT_HEADER_WITHOUT_URL { position:relative;top:0px;left:0px;width:100%; font-size: 27px;}</style>"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getImageUrlForSavedPages()[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getArticleHeading()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    array-length v8, v0

    if-eqz v8, :cond_2

    aget-object v8, v0, v9

    if-eqz v8, :cond_1

    aget-object v8, v0, v9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v4, v0, v9

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<div> <img src=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" width=\"100%\" height = \"330\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /><div class = \"SISO_EXTRACT_HEADER\" > <p> <font color = \"white\" >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font></p> </div></div>  <div style=\"word-wrap: break-word;\"> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<div style = \"background-color:rgb(204,204,204);padding: 5px 5px;\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</div>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->setTabExtractData(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->startExtracterActivity(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    const-string v4, ""

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<div class = \"SISO_EXTRACT_HEADER_WITHOUT_URL\" > <p>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<br></p> </div><div style=\"word-wrap: break-word;position:relative\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<div style = \"background-color:rgb(204,204,204);padding: 5px 5px;\"><p>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</p></div>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected prepareFindOnPage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public print()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$15;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryCurrentActionBarHeight()I
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    new-array v2, v4, [I

    const v4, 0x10102eb

    aput v4, v2, v5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public readLater(Z)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setReadLaterActivityRunning(Z)V

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/content/browser/ContentView;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->readLater(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->onDestroy()V

    :goto_0
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while starting save page activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->onDestroy()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->onDestroy()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    :cond_1
    throw v2
.end method

.method public readerTranslate()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderTranslateText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.translator.TRANSLATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mode"

    const-string v2, "viewer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source_text"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getReaderTranslateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "html_source_text"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "translation_engine_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public receivedTagTitleAsHint(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "chrome://newtab/#open_tabs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "chrome://newtab/#most_visited"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setHint(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public registerActionModeCallBacks(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->setActionModeCallbackEditText(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V

    return-void
.end method

.method public registerEnableAnimationsNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->isAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchAnimator:Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;->registerForNotificationsToEnableAnimation()V

    :cond_0
    return-void
.end method

.method public registerReceiverForTabSwitching()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "TAB_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public reloadTabIfNecessary(Z)V
    .locals 6

    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPLOGS: reloadTabIfNecessary - launchUrlIfNull(boolean argument) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->onActivityResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v2, "http://www.google.com"

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->onActivityResume()V

    goto :goto_0
.end method

.method public removeContentViewFromCVHolder(Lorg/chromium/content/browser/ContentView;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->removeContentView(Lorg/chromium/content/browser/ContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setUrlBarState(I)V

    :cond_0
    return-void
.end method

.method public removeTabPreview(Z)V
    .locals 2

    const-string v0, "SBrowserMainActivity"

    const-string v1, "removeTabPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/UI;->removeTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)V

    :cond_0
    return-void
.end method

.method public resetExtractSummary()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->resetPagesummary()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setExtractModeVisibility(Z)V

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setShowExtractModeVisibility(ZZ)V

    return-void
.end method

.method public resetLayerPositions()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "ToolBarAutoHider : resetLayerPositions "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->cancelHidingUrlBar()V

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setUrlBarActive(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/UI;->setStateofURL(I)V

    return-void
.end method

.method public resetPrintProgressState(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isPrintInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isPrintInProgress:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPrintProgressState(Z)V

    :cond_0
    return-void
.end method

.method public restoreThumbnailDB()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isDBThumbnailLoaded:Z

    const-string v0, "TabRestore"

    const-string v1, "Calling clearUnusedTabBitmap() from restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->clearUnusedTabBitmap()V

    goto :goto_0
.end method

.method public saveDataUri(Ljava/lang/String;)V
    .locals 14

    const/4 v10, 0x0

    :try_start_0
    new-instance v13, Lcom/sec/android/app/sbrowser/common/DataUri;

    invoke-direct {v13, p1}, Lcom/sec/android/app/sbrowser/common/DataUri;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTarget(Lcom/sec/android/app/sbrowser/common/DataUri;)Ljava/io/File;

    move-result-object v12

    const v1, 0x7f0c007e

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showShortToast(I)V

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/DataUri;->getData()[B

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/DataUri;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/DataUri;->getData()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v11, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v10, v11

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v9

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c007f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_1

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v10, :cond_2

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v1

    :catch_2
    move-exception v1

    :goto_5
    if-eqz v10, :cond_1

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v10, v11

    goto :goto_3

    :catch_5
    move-exception v9

    move-object v10, v11

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v10, v11

    goto :goto_5
.end method

.method public scrapPageSavedFileName(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mReadLaterController:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadLaterController;->scrapPageSavedFileName(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setBookMarkVisibility(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mShowBookmark:Z

    return-void
.end method

.method public setBookmarkStarButtonState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mBookmarkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsBookmarkedrunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mLocationBar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->setBookmarkStarButtonClicked(Z)V

    return-void
.end method

.method public setBrightness()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSecPowerControl:Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/SecPowerControl;->onDrawPowerCtrl()V

    return-void
.end method

.method public setContentFullScreenMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->setFullScreenMode()V

    return-void
.end method

.method public setDNIeMode(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$33;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$33;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$33;->start()V

    return-void
.end method

.method public setDeviceState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->deviceMode:I

    return-void
.end method

.method public setEasyModeFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isEasyMode:Z

    return-void
.end method

.method public setFavoritAppWidgetThumbnail()V
    .locals 23

    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v4, "setFavoritAppWidgetThumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v2, :cond_3

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v22, :cond_5

    if-eqz v17, :cond_5

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v4, "get bitmap from most-visited"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v18, 0x3f80

    mul-int v3, v5, v20

    div-int v6, v3, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    :cond_4
    if-gt v6, v12, :cond_6

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v5

    div-float v18, v3, v4

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->updateFavoritAppWidget()V

    goto/16 :goto_0

    :cond_5
    if-eqz v16, :cond_3

    :try_start_1
    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v4, "get bitmap from ChromeView"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getWidth()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/content/browser/ContentView;->getHeight()I

    move-result v10

    invoke-virtual {v3, v4, v8, v9, v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmap(IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_1

    :catch_0
    move-exception v15

    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v4, "OutOfMemoryError thrown while trying to fetch a tab bitmap."

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_6
    mul-int v3, v12, v21

    div-int v11, v3, v20

    move/from16 v0, v20

    int-to-float v3, v0

    int-to-float v4, v12

    div-float v18, v3, v4

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFavoriteAppWidgetThumbnail:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public setFindToolBar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFindCustomActionModeCallback:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$FindCustomActionModeCallback;

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setFindToolbar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFontScaleFactor()V
    .locals 4

    const/high16 v3, 0x3f80

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "text_scale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setFontScaleFactor(F)V

    return-void
.end method

.method public setFullScreen()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    return-void
.end method

.method public setHideUrlBarListener()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v2, "ToolBarAutoHider : setHideUrlBarListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setHideUrlBarListener(Lorg/samsung/content/sbrowser/HideUrlBarListener;)V

    :cond_0
    return-void
.end method

.method public setHideUrlBarListener(Lorg/chromium/content/browser/ContentView;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "ToolBarAutoHider : setHideUrlBarListener + mContentView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setHideUrlBarListener(Lorg/samsung/content/sbrowser/HideUrlBarListener;)V

    :cond_0
    return-void
.end method

.method public setIsAirBrowseRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsAirBrowseRunning:Z

    return-void
.end method

.method public setIsBackFromTabManager(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBackFromTabManager:Z

    return-void
.end method

.method public setMultiTabLandscapeScrollY(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiTabLandScapeScrollY:I

    return-void
.end method

.method public setMultiTabPortraitScrollY(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mMultiTabPortraitScrollY:I

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final setScreenMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsXLarge:Z

    :cond_0
    return-void
.end method

.method public setStateofURL(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->setStateofURL(I)V

    return-void
.end method

.method protected setTabManagerActivityStatus(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "activeStatus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setTabMangerActiveStatus(Z)V

    return-void
.end method

.method public setTabMangerActiveStatus(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->SetTabMangerActiveStatus(Z)V

    goto :goto_1
.end method

.method public setTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mPreview:Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;

    return-void
.end method

.method public setTabSwipeWithAirBrowseGestureInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsTabSwipeWithAirBrowseGesture:Z

    return-void
.end method

.method public setTopMarginForContentView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->setTopMarginForChromeView()V

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/common/UI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    return-void
.end method

.method public setUrlBarActive(ZZ)V
    .locals 4

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarAutoHider : setUrlBarActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/HideUrlBarCmd;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    iput-boolean p2, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    iput-boolean p1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_hidden:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/UI;->setUrlBarActiveFlag(Z)V

    return-void
.end method

.method public setUrlBarActiveFlag(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->setUrlBarActiveFlag(Z)V

    return-void
.end method

.method public setUrlBarBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v2, "ToolBarAutoHider : setUrlBarBitmap "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/HideUrlBarCmd;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    iput-object p1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    return-void
.end method

.method public setUrlBarHidden(Z)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarAutoHider setUrlBarHidden url_hide = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/HideUrlBarCmd;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->cmd:I

    iput-boolean v4, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->override_allowed:Z

    iput-boolean v4, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_active:Z

    iput-boolean p1, v0, Lorg/samsung/content/sbrowser/HideUrlBarCmd;->urlbar_hidden:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->HideUrlBarCmdReq(Lorg/samsung/content/sbrowser/HideUrlBarCmd;)V

    return-void
.end method

.method public setUrlTextEmpty()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public settings()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$17;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shareUrl(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$11;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lorg/chromium/content/browser/ContentView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDesktopView()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$16;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d0019

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0032

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$19;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007c

    new-instance v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$18;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$18;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->signInDialog:Landroid/app/Dialog;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public startExtracterActivity(Z)V
    .locals 6

    :try_start_0
    sget-object v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentViewListAdapter ---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Tab ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reader Detection Object"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/sec/android/app/sbrowser/extractmode/ExtracterActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->getArticleHeading()Ljava/lang/String;

    move-result-object v0

    const-string v3, "articleHeadData"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SBrowserMainActivityContextId"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isFromMainActivity"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isForExtactMode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "isTranlateNeeded"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x29

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public startPrint()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isPrintInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPrintProgressState(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showPlaceHolderDuringPrint()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->print()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "VerificationLog"

    const-string v1, "MainActCtrler - surfaceCreated -start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onSuccess()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuationIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuation:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuationIntent:Landroid/content/Intent;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->onNewIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;->access$700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$InitializerContinuation;Landroid/content/Intent;)V

    :cond_0
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mInitializerContinuationIntent:Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->isTabCreationInProcess()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setToolBarMainLayoutVisiblity()V

    sget-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated() - APPLOGS: calling mUi.reloadTabIfNecessary()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->reloadTabIfNecessary()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->initializeToolbarSwipe()V

    const-string v0, "VerificationLog"

    const-string v1, "MainActCtrler - surfaceCreated -stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsComingFromOnResumeState:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsReloadTabCaseSkipped:Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public switchSession(Z)V
    .locals 7

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "ramya"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Session change url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Tvmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, v2}, Lorg/chromium/content/browser/ContentView;->setUseDesktopUserAgent(ZZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public syncTabs()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->showDialog()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->SignedInWithDialog:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SBrowserMainActivityContextId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x41

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public tabStateLoaded()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onTabStateLoaded()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CUSTOM_TAB_LIST_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->restoreTabList()V

    :cond_0
    return-void
.end method

.method public toggleWindowHeight(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isMultiWindowRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/UI;->matchParent()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->toggleWindowHeight(Z)V

    goto :goto_0
.end method

.method public unregisterReceiverForTabSwitching()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTabSwitchBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateFullScreenWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsFullScreen:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mIsFullScreen:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mChromeViewHolder:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPlaceholderViewAreaState(I)V

    :cond_0
    return-void
.end method

.method public updateUrlBarFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->updateUrlBarFocus(Z)V

    return-void
.end method

.method public updateView(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/UI;->updateView(I)V

    return-void
.end method

.method protected whileTabCreated()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCommandLine()Lorg/chromium/content/common/CommandLine;

    move-result-object v1

    const-string v2, "enable-samsung-multiwindow"

    invoke-virtual {v1, v2}, Lorg/chromium/content/common/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$29;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$29;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
